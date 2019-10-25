class SearchController < ApplicationController

  def show
    render locals: {
      facade: SearchShow.new(params[:location])
    }
  end
end
