class CollectionController < ApplicationController
  before_action :check_existance

  def index
    @collection = data[params[:collection]]
  end

  def contract
    collection = data[params[:collection]]

    render json: {
      description: collection[:description],
      name: collection[:title],
      image: "#{root_url}icon.png",
      external_link: "#{root_url}#{collection[:slug]}"
    }
  end

  private
  def check_existance
    return if data.dig params[:collection]

    raise ActionController::RoutingError.new('Not Found')
  end
end
