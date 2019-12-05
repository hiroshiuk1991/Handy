class ApplicationController < ActionController::Base
    helper_method :current_user, :authorize_user

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end 
    end
    
    def authorize_user
        unless current_user
            flash[:notice] = "Please log in to access this feature."
            redirect_to new_session_path 
        end 
    end 

    def require_login
        unless logged_in?
          flash[:error] = "You must be logged in to access this section."
          redirect_to login_path
        end
      end

end
