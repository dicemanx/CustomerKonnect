module ApplicationHelper
	
	private

		def current_user
  			@current_user ||= Business.find(session[:user_id]) if session[:user_id]
		end

end
