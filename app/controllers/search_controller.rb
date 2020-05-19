class SearchController < ApplicationController 
  def index
    results = SearchResults.new
    @members = results.members(params[:house])
  end
end