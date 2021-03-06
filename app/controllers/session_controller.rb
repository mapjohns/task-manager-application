class SessionController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(:username => params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to '/users'
        else
            render :new
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/signin'
    end
end