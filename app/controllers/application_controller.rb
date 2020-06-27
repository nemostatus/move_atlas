class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def home
    redirect_to "/welcome"
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?	
    !current_user.nil?	
  end	

  def log_in(user)	
    session[:user_id] = user.id	
  end	

  def log_out	
    session[:user_id] = nil	
    redirect_to "/", notice: "You are logged out!"	
  end	
end


