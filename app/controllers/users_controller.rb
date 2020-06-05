class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def new
     @user = User.new 
    end 

    def create 
      @user = User.create(user_params)
      if @user.save
        log_in(@user)
        redirect_to @user
        flash[:success] = "You're all signed up!"
      else
        render :new
      end
    
    end 

    def show 
        @user = User.find(params[:id])
    end
    private
    def user_params 
        params.require(:user).permit(:username, :password))
    end
 
   
end
