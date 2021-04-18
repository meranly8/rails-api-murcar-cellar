class WinesController < ApplicationController
    def index
        wines = Wine.all
        render json: wines
    end
end
