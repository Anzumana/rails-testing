class WelcomeController < ApplicationController
  def index
	
  end
	
	def sign_in
		@userName = params[:userName]
		@password = params[:password] 
		if params[:password].to_s == '123'
			redirect_to action: 'index'
		end
		if params[:password].to_s == '456'
			redirect_to action: 'admin'
		end

		
	end
end
