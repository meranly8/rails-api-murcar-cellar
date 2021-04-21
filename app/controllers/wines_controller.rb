class WinesController < ApplicationController
    def index
        wines = Wine.all
        render json: WineSerializer.new(wines)
    end

    def show
        wine = Wine.find_by(id: params[:id])
        render json: WineSerializer.new(wine, include: [:comments])
    end

    def create
        wine = Wine.new(wine_params)
        if wine.save
            render json: WineSerializer.new(wine)
        else
            render json: {invalid: "Error occurred when trying to save wine"}
        end
    end


    private
        def wine_params
            params.require(:wine).permit(:wine, :region, :country, :year, :price, :image, :opened, :rating)
        end
end
