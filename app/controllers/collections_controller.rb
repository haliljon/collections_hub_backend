class CollectionsController < ApplicationController
    def index
        @collections = Collection.all
        render json: @collections
    end
    
    def show
        @collection = Collection.find(params[:id])
        render json: @collection
    end

    def create
        @collection = Collection.create(collection_params)
        render json: @collection
    end

    def update
        @collection = Collection.find(params[:id])
        @collection.update(collection_params)
        render json: @collection
    end

    def destroy
        @collection = Collection.find(params[:id])
        @collection.destroy
        render json: @collection
    end

    private

    def collection_params
        params.require(:collection).permit(:name, :user_id, :image_url, :custom_bool1, :custom_bool2, :custom_bool3, :custom_str1, :custom_str2, :custom_str3, :custom_int1, :custom_int2, :custom_int3, :custom_text1, :custom_text2, :custom_text3, :custom_date1, :custom_date2, :custom_date3)
    end
    
end
