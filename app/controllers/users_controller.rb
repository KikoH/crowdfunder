class UsersController < ApplicationController
	skip_before_filter :require_login, only: [:index, :new, :create]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to projects_path, :notice => "Successfully signed up"
		else
			render 'new', :notice => "Error signing up"
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
