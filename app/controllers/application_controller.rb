class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  helper_method :authenticate_required

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authenticate_required
    if !logged_in?
      redirect_to '/login'
    end
  end
end
