class TagsController < ApplicationController
    before_action :set_tag, only: [:show, :destroy]
    def index
        @tags=Tag.all
        render json: @tags        
    end

    def show
        render json: @tag
    end

    def new
    end

    def create
        @tag=Tag.create(tag_params)
        render json: @tag
    end

    def destroy
        @tag.destroy
        render json: @tag
    end

    private

    def tag_params
        params.require(:tag).permit(:name, :item_id)
    end

    def set_tag
        @tag=Tag.find(params[:id])
    end

end