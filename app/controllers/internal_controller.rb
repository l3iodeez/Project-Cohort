class InternalController < ApplicationController
	before_action :authenticate_user!
	before_filter :check_user

	def check_user
		if params[:username] == current_user.username

	      else
		      redirect_to root_path,
	          alert: "This is not your profile."

		end

	end


end
