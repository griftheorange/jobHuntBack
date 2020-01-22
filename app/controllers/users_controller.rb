class UsersController < ApplicationController

    require 'jwt'

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user
            if @user.authenticate(params["password"])
                render json: {token: genToken(@user)}
            else
                render json: {errors: ["Password incorrect"]}
            end
            
        else
            render json: {errors: ["Did not find a user matching that username"]}
        end
    end

    def create
        @user = User.create(username: params[:username], password: params[:password])
        if @user.valid?
            render json: {token: genToken(@user)}
        else 
            render json: {errors: @user.errors.full_messages}
        end
    end

    private
    def hmac_secret
        "yeetOnTheHaters"
    end

    def genToken(user)
        payload = {id: @user.id, type: "user"}
        token = JWT.encode payload, hmac_secret, "HS256"
    end
end
