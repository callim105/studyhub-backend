class Hub < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    def get_rating
        reviews = self.reviews
        ratings = []
        reviews.each do |review|
            ratings.push(review.rating)
        end
        return ratings.sum / ratings.size
    end



end
