class HubsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]

    def index
        @hubs = Hub.all 
        @hubs.each do |hub|
            if hub.reviews.size > 0
                hub.rating = hub.get_rating
                hub.save
            end
        end
        render json: @hubs, status: 200
    end

    def create
        @hub = Hub.new(hub_params)
        if @hub.valid?
            @hub.save 
            render json: @hub
        else 
            render json: "You didn't enter in valid hubs requirements."
        end

    end


    private

    def hub_params
        params.require(:hub).permit(:name, :description, :wifi, :restrooms, :address, :longitude, :latitude, :noise)
    end

end
