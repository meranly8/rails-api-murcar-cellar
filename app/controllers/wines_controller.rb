class WinesController < ApplicationController
    def index
        wines = Wine.all
        render json: WineSerializer.new(wines)
    end

    def show
        wine = Wine.find_by(id: params[:id])
        render json: WineSerializer.new(wine, include: [:comments])
    end
end
