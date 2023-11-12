class CollectionsController < ApplicationController
    def index
        @collections = Collection.all
        render json: @collections
    end
    
    def show
        @collection = Collection.find(params[:id])
        render json: @collection
    end

    
end
