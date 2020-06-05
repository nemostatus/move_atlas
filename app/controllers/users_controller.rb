class UsersController < ApplicationController
    def new
     @user = User.new 
    end 

    def create 
      @user = User.create(params.require(:user).permit(:username, :password))
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    end 

    def show 
    end
 
   
end
