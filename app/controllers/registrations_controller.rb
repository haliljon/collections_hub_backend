class RegistrationsController < ApplicationController
    def create
        begin
          user = User.create!(
            email: params["user"]["email"],
            username: params["user"]["username"],
            password: params["user"]["password"],
            password_confirmation: params["user"]["password_confirmation"]
          )
        rescue ActiveRecord::RecordInvalid => e
          render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
        else
          session[:user_id] = user.id
          render json: {
            status: :created,
            user: user
          }
        end
      end
end