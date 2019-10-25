class SearchController < ApplicationController

  def show
    render locals: {
      facade: SearchShowFacade.new(params[:location])
    }
  end
end
