class SessionsController < ApplicationController
 
   
    def welcome
        render :welcome
    end
    
    def new
        @user = User.new
    end

  

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
           session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
           redirect_to '/login'
        end
     end

      def oauth
       
       
        def destroy
          session[:user_id] = nil
          redirect_to root_url, :notice => "Signed out!"
        end
       
      end
      
     end
     def page_requires_login
     end

     def destroy
        session[:user_id] = nil
        redirect_to welcome_path
     end

    
    
end