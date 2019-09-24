class ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]

    def index
        @reviews = Review.all 
        render json: @reviews, status: 200
    end

    # dont forget to require auth to create comments
    def create
        @review = Review.new(review_params)
        if @review.valid?
            @review.save 
            render json: @review
        else 
            render json: "You didn't enter in valid review requirements."
        end
    end

    def delete

    end

    private

    def review_params
        params.require(:review).permit(:id, :user_id, :hub_id, :rating, :content)
    end
end
