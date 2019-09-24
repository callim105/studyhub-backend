class ImageSerializer < ActiveModel::Serializer
  attributes :id, :hub_id, :user_id, :image_url
end
