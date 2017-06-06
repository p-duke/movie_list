class ApiQuery
  include HTTParty

  attr_reader :results, :poster_base_uri

  def initialize(params = {})
    @query = params[:title]
    @api_key = "?api_key=#{Rails.application.secrets.tmdb_key}"
    @base_uri = "https://api.themoviedb.org/3"
    @search_uri = @base_uri + '/search/movie' + @api_key
    @popular_uri = @base_uri + '/movie/popular' + @api_key
    @poster_file_size = 'w500'
    @poster_base_uri = 'https://image.tmdb.org/t/p/w500'
  end

  def search
    if @query
      run_movie_title_query
    else
      run_popular_movie_query
    end
  end

  def run_popular_movie_query
    @results = self.class.get(@popular_uri)
  end

  def run_movie_title_query
    @results = self.class.get(@search_uri,query: {query: @query})
  end

end
