class ApplicationController < ActionController::Base

	private

	def logged_in?
		if current_user.present?
			flash[:notice] = "You'r already logged in!"
			redirect_to users_show_path
		end
	end

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

end
