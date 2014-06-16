class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize

    if current_user.nil?
      flash[:notice] = "Please sign in first"
      redirect_to '/'
    end
  end

  helper_method :current_user, :authorize
end
