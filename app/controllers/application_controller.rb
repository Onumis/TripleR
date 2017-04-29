class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_signed_in?

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def user_signed_in?
    return true if current_user
  end

  def authenticate_user!
    if !current_user
      redirect_to root_url, alert: 'You need to sign in for access to this page.'
    end
  end
end
