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
      @results = self.class.get(@base_uri,query: {query: @params[:title]})
    else
      @results = run_default_query
    end
  end

  def run_default_query
    self.class.get(@popular_uri)
  end

end
