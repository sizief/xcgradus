class ItemApiController < ApplicationController
  include ApplicationHelper
  before_action :check_existance

  def index
    collection = data.dig(params[:collection])
    item_id = params[:id].to_i
    item_key = collection[:items].keys.select do |key|
      collection[:items][key][:id] == item_id
    end

    raise ActionController::RoutingError.new('Not Found') if item_key.empty?

    item = collection[:items][item_key.first]
    render json: {
      id: item_id,
      name: item[:title],
      description: item[:description],
      external_url: "#{root_url}#{collection[:slug]}/#{item[:slug]}",
      image: "#{root_url}#{item_image_url(collection[:slug], item[:slug])}",
      attributes: [{count: 1}]
    }
  end

  private

  def check_existance
    return if data.dig(params[:collection])

    raise ActionController::RoutingError.new('Not Found')
  end
end
