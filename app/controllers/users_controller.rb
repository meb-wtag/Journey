class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
		@users = User.all
	end

	private
	def user_params
		params.require(:user).permit(:first_name, 
									 :last_name,
									 :role
									 :description
									 :date_of_birth
									 :joining_date)
	end

	def create
		@user = User.new(journal_params)
		if @user.save
			redirect_to new_user_path 
		end
	end
end
