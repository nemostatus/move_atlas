class SessionsController < ApplicationController
  
   
    def welcome

        render :welcome
    end
    
    def oauth
      if auth_hash =   request.env['omniauth.auth']
        o_auth_email = request.env['omniauth.auth']['info']['email']
       if user = User.find_by(:email => o_auth_email)
        session[:user_id] = user.id 
        redirect_to root_path
      else
          user = User.new(:username => request.env['omniauth.auth']['info']['nickname'],:email => o_auth_email, :password => SecureRandom.hex)
          if user.save
          session[:user_id] = user.id 
          redirect_to root_path
      end
   end
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