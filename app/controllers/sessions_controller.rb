class SessionsController < ApplicationController
  
   
    def welcome

        render :welcome
    end
    
    def oauth
     user = User.find_or_create_by_omniauth(auth_hash)
     if user.save
       session[:user_id] = user.id 
          redirect_to root_path
     else
      redirect_to root_path
     end
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

     
     

     def destroy
        session[:user_id] = nil
        redirect_to welcome_path
     end

     protected

  def auth_hash
    request.env['omniauth.auth']
  end

  end