class ItemApiController < ApplicationController
  include ApplicationHelper
  before_action :check_existance

  def index
    collection = data.dig(params[:collection])
    item_id = (params[:id].to_i / 10).to_i
    copy_id = (params[:id].to_i % 10).to_i
    item_key = collection[:items].keys.select do |key|
      collection[:items][key][:id] == item_id
    end

    raise ActionController::RoutingError.new('Not Found') if item_key.empty?

    item = collection[:items][item_key.first]
    render json: {
      name: item[:title],
      description: item[:description],
      external_url: "#{root_url}#{collection[:slug]}/#{item[:slug]}",
      image: "#{root_url}#{item_image_url(collection[:slug], item[:slug])}",
      attributes: [{count: copy_id_to_show(copy_id, item)}]
    }
  end

  private

  def copy_id_to_show(copy_id, item)
    "#{copy_id == 0 ? 10 : copy_id}/#{item[:count]}"
  end

  def check_existance
    return if data.dig(params[:collection])

    raise ActionController::RoutingError.new('Not Found')
  end
end
