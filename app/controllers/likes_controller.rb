class LikesController<ApplicationController
    before_action :set_like, only: [:show, :destroy]
    def index
        @likes=Like.all
        render json: @likes
    end

    def show
        render json: @like
    end

    def new
    end

    def create
        @like=Like.create(like_params)
        render json: @like
    end

    def destroy
        @like.destroy
        render json: @like
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :item_id)
    end    

    def set_like
        @like=Like.find(params[:id])
    end
end