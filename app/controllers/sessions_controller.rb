class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    redirect_to '/auth/facebook'
  end

  def create
    user = User.find_by(
      provider: auth_hash['provider'],
      uid: auth_hash['uid'].to_s
    ) || User.create_with_omniauth(auth_hash)
    reset_session
    session[:user_id] = user.id

    redirect_to request.env['omniauth.origin'] || root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  def failure
    redirect_to root_path, alert: "Error: #{params[:message].humanize}"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
