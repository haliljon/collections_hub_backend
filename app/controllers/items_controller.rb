class ItemsController < ApplicationController
    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def create
        @item = Item.create(item_params)
        render json: @item
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render json: @item
    end

    private

    def item_params
        params.require(:item).permit(:name, :collection_id, :custom_bool1, :custom_bool2, :custom_bool3, :custom_str1, :custom_str2, :custom_str3, :custom_int1, :custom_int2, :custom_int3, :custom_text1, :custom_text2, :custom_text3, :custom_date1, :custom_date2, :custom_date3, tags: [])
    end
end
