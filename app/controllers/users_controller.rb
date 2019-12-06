class UsersController < ApplicationController
    before_action :current_user
    before_action :require_login, only: [ :edit, :update, :destroy]


    def index
        @users = User.all 
    end 

    def show 
        @user_selected = User.all.find(params[:id])
    end 

    def new
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            #session[:user_id] = @user.id 
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
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :img_url, :self_description)
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id 
    end 

end

