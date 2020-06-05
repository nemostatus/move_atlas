class ApplicationController < ActionController::Base
    def home
        redirect_to login_path
    end
    def current_user    
        User.find_by(id: session[:user_id])  
    end
end
