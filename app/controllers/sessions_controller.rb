class SessionsController < ApplicationController
	def new	
	end
	def create
		@user = User.find_by("email = ? AND password_digest = ?",params[:email],params[:password_digest])
		if @user
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else 
			redirect_to login_path
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end
end
