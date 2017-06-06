class ApiQueriesController < ApplicationController

  def index
    @query = ApiQuery.new()
    @query.search
    accepted_headers = ["title", "poster_path"]
    @headers = @query.results["results"].first.keys.reject {|key| !accepted_headers.include?(key) }
  end

  def create
    @query = ApiQuery.new(params)
    @query.search
    render 'show'
  end

end
