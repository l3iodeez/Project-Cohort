class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_g_user



	def set_g_user
		current_user = User.find_by_email(params[:email])
	end
end
