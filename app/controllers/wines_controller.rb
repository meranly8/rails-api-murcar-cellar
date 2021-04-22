class WinesController < ApplicationController
    def index
        wines = Wine.all.sort_by {|obj| obj.wine}
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

    def destroy
        wine = Wine.find_by(id: params[:id])
        wine.destroy
        render json: {message: "#{wine.wine} has been deleted."}
    end


    private
        def wine_params
            params.permit(:wine, :region, :country, :year, :price, :image, :opened, :rating)
        end
end
