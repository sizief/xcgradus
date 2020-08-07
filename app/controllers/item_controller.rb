class ItemController < ApplicationController
  before_action :check_existance

  def index
    @item = data.dig(params[:collection], :items, params[:item])
  end

  private

  def check_existance
    return if data.dig(params[:collection], :items, params[:item])

    raise ActionController::RoutingError.new('Not Found')
  end

end
