class SearchController < ApplicationController

  def show
    render locals: {
      facade: SearchShow.new(FuelStationService.new(params[:location]))
    }
  end
end
