class SessionsController < ApplicationController

    def new
    end 

    def create
        @user = User.find_by(username: params[:user][:username])

        #return render :new unless @user 

        if @user == nil or @user == "" 
            flash[:no_user] = "No user found with those details"
            render :new
        else 
            return render :new unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        end
        # return head(:forbidden) unless @user.authenticate(params[:user][:password])
        # session[:user_id] = @user.id 
        # redirect_to user_path(@user)
    end 

    def destroy
        session[:user_id] = nil
        redirect_to new_session_path 
    end 

end