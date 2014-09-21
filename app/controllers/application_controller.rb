class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user
  before_action :current_user

  protect_from_forgery with: :exception

  layout 'slate'

  def current_user
  	@current_user ||= Business.find(session[:user_id]) if session[:user_id]
  end
end
