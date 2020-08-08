class ItemController < ApplicationController
  before_action :check_existance

  def index
    @item = data.dig(params[:collection], :items, params[:item])
    @collection = data[params[:collection]]

    owner = Struct.new(:address, :buy_at)
    @owners = [["0x123456781233", Date.today],["0x3423456225", Date.today]]
      .map { |o| owner.new(o.first, o.last) }
  end

  private

  def check_existance
    return if data.dig(params[:collection], :items, params[:item])

    raise ActionController::RoutingError.new('Not Found')
  end

end
