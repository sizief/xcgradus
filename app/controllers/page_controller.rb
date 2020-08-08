class PageController < ApplicationController
  def index
    @collection = data['top-ten-classic-sci-fi']
  end
end
