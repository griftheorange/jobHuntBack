class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def login
        render json: {yeet:"yeet"}
    end

    def create
        @user = User.create(username: params[:username], password: params[:password])
        if @user.valid?
            render json: @user
        else 
            render json: @user.errors
        end
    end
end
