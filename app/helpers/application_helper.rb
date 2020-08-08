module ApplicationHelper
  def item_image_url(collection, item)
    "/#{collection}/original/#{item}.jpg"
  end
end
