class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :destroy, :update]
    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        render json: @comment
    end

    def edit
    end

    def new
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def update
        @comment.update(comment_params)
        render json: @comment
    end

    def destroy
        @comment.destroy
        render json: @comment
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :item_id, :content)
    end

    def set_comment 
        @comment=Comment.find(params[:id])
    end
end