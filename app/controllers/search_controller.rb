class SearchController < ApplicationController
  def index
    render locals: {
      search_results: PotterSearchFacade.new(params[:house])
    }
  end
end
