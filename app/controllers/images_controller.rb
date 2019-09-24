class ImagesController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]

    def create
        @image = Image.new(images_params)
        if @image.valid?
            @image.save 
            render json: @image
        else 
            render json: "You didn't enter in valid image requirements."
        end
    end

    def index
        @images = Image.all
        render json: @images, status: 200
    end

    private

    def images_params
        params.require(:image).permit(:id, :hub_id, :image_url, :user_id)
    end
end
