class UsersController < ApplicationController

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			flash[:success] = "Signed up successfully!"
			redirect_to root_path
		else
			flash[:error] = "Something went wrong!"
			redirect_to request.referer
		end
	end

	def show
		@user = current_user
	end

	private

	def user_params
		params.require(:user).permit(:email, :username, :password, :password_confirmation)
	end
end
