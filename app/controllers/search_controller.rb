class SearchController < ApplicationController 
  def index
    results = SearchResults.new
    @members = results.members(params[:house])
    @house_info = results.house_info(params[:house])
  end
end