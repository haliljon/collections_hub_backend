class SessionsController < ApplicationController
    include CurrentUserConcern
    def create
        user=User.find_by(email: params[:user][:email])
                 .try(:authenticate, params[:user][:password])
        if user&&user.status=="active"
            session[:user_id]=user.id
            render json: {
                status: :created,
                logged_in: "LOGGED_IN",
                user: user
            }
        else
            render json: { status: 401 }
        end
    end

    def logged_in
        if @current_user
            render json: {
                logged_in: "LOGGED_IN",
                user: @current_user
            }
        else
            render json: {
                logged_in: "NOT_LOGGED_IN"
            }
        end
    end

    def logout
        reset_session
        render json: { status: 200, logged_in: "NOT_LOGGED_IN" }
    end
end