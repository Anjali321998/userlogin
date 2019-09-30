class UserController < ApplicationController
	def index
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save!
			redirect_to welcome_index_path
		else
			render 'new'
		end 
	end
	def edit
	end
	def update
	end
	private
	def user_params
		params.require(:user).permit(:fname,:lname,:email,:password)
	end
end
