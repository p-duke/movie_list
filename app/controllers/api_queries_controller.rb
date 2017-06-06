class ApiQueriesController < ApplicationController

  def index
    @query = ApiQuery.new()
    @query.search
    @headers = @query.results["results"].first.keys
  end

  def create
    @query = ApiQuery.new(params)
    @query.search
    render 'show'
  end

end
