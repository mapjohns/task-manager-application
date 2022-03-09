class UsersController < ApplicationController

    def index
        @users = User.all
        @counter = 1
    end

    def new
        @user = User.new()
    end

    def create
        params.inspect
        @user = User.create(user_params)
        if @user.valid?
            redirect_to '/users'
        else
            render :new
        end
    end


    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password)

    end

end