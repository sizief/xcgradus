module ApplicationHelper
  def item_image_url(collection, item)
    "/#{collection}/original/#{item}.jpg"
  end

  def item_image_url_thumbnail(collection, item)
    "/#{collection}/thumbnail/#{item}.jpg"
  end
end
