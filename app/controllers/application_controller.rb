class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def home
    redirect_to "/welcome"
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

end
