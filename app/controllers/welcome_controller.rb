class WelcomeController < ApplicationController
	before_filter :redirect_logged_in

	def redirect_logged_in
		if current_user
			redirect_to internal_page_path(current_user.username) 
		end
	end
end
