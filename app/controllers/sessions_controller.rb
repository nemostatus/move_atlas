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
        if auth_hash = request.env['omniauth.auth']
       
        o_auth_uid = request.env['omniauth.auth']['provider']['uid'] #key and value how to make both 2 seperate keys? 2 seperate values
        if user = User.find_by()
          #so i need to give users a uid attribute? because i can't find a user with it
         #so the next key is an email i dint give my user an email attribute can i use
        #a different attribute or should i create email lets see other attributes seesm like github also doesntt have my 
        #email i have a uid but that seems like information that can be compromised and no way to match it to anything
   
          
       
      end
    end
       
        def destroy
          session[:user_id] = nil
          redirect_to root_url, :notice => "Signed out!"
        end
       
    
      
     
     def page_requires_login
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