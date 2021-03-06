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
      if Rails.env.production?
        redirect_to signin_path
      else
        redirect_to '/auth/developer'
      end
    end
  end
end
