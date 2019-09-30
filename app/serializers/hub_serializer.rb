class HubSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address, :rating, :description, :wifi, :restrooms, :noise, :reviews
  
end
