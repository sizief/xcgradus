class CollectionController < ApplicationController
  before_action :check_existance

  def index
    @collection = data[params[:collection]]
  end

  private
  def check_existance
    return if data.dig params[:collection]

    raise ActionController::RoutingError.new('Not Found')
  end
end
