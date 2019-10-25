class SearchController < ApplicationController

  def show
    render locals: {
      facade: SearchShow.new
    }
  end
end
