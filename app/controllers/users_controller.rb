class UsersController < ApplicationController
    # before_action :authorize_user, only: [:edit, :update, :destroy]

    def index
        @user = User.all 
    end 

    def show 
        @user = User.all.find(params[:id])
    end 

    def new
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)    
        else
            render :new 
        end
    end 

    def edit
        @user = User.find(params[:id])
    end 

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :edit 
        end 
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to new_user_path #should redirect to login page 
    end 
    


        private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
        end

end

