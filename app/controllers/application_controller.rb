class ApplicationController < ActionController::Base

  # This line makes these two methods available to our views.
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?

  end

  def require_user

  end

end
