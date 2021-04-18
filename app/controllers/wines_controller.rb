class WinesController < ApplicationController
    def index
        wines = Wine.all
        render json: WineSerializer.new(wines)
    end
end
