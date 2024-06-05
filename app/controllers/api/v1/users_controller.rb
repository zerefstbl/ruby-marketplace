module Api::V1
    class UsersController < ApplicationController

        def index
            render json: User.all, status: :ok
        end

        def show
            render json: User.find(params[:id])
        end

        def create
            user = User.new(user_params)
            if user.save
                render json: user, status: 201, location: [:api, user]
            else
                render json: { errors: user.errors }, status: 422
            end
        end

        def update
            user = User.find(params[:id])
            if user.update(user_params)
                render json: user, status: 201, location: [:api, user]
            else
                render json: { errors: user.errors }, status: 422
            end
        end

        def destroy
            User.find(params[:id]).destroy!
            head 204
        end

        private

        def user_params
            params.permit(:email, :password, :password_confirmation)
        end
    end
end
