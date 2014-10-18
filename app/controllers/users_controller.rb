class UsersController < ApplicationController
		
	before_filter :authenticate_user!
	load_and_authorize_resource 
	 

	def edit
	end

	def show
	end

	def update
		@user.update_attributes(user_params)
	end
	

	private

	 def user_params
	 	require(:user)
	 end
end
