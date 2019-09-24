class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :reviews, dependent: :destroy
    has_many :hubs, through: :reviews
    has_many :images
end
