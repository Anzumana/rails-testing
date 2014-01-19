class WelcomeController < ApplicationController
  def index
	
  end
	def userCreation
		redirect_to "/users/new"
	end

	def sign_up
	end
	
	def sign_in
		@userName = params[:userName]
		@password = params[:password] 
		
		@test  = User.exists?(userName: @userName,password: @password)
		if @test==true
			if @userName == 'admin'
				redirect_to action: 'admin' 
			else 
				redirect_to action: 'index'
			end

		end
	end

#		if params[:password].to_s == '123'
#			redirect_to action: 'index'
#		end
#		if params[:password].to_s == '456'
#
#			redirect_to action: 'admin'
#		end
	def admin
	end

		
end
