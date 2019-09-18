class HubsController < ApplicationController

    def create

    end

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



end
