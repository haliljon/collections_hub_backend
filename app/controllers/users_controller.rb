class UsersController < ApplicationController
    include CurrentUserConcern
    before_action :set_user, only: [:show, :destroy, :update]

    def show
        render json: @user
    end

    def index
        @users=User.all
        render json: @users
    end

    def edit
    end

    def update
        if @user.update(user_params)
        render json: @user
        else
        render json: @user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:status)
    end
    def set_user 
        @user=User.find(params[:id])
    end
end