class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content, :created_at
  has_one :user
  has_one :hub
end
