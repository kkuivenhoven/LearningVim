class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	protected
		def authenticate
			authenticate_or_request_with_http_basic do |username, password|
				username == USER_ID && password == PASSWORD
				if(username == USER_ID && password == PASSWORD) 
					session[:logged_in] = true
				else
					session[:logged_in] = false
				end
			end
		end

end
