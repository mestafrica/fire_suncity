class UsersController < ApplicationController

  # TODO: Prevent this from being accessed by non-admin
  # Remove it all together in future and put its functionality
  # in the admin page
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end
	
	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:id])
		
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		# Ask the user a lot of confirmation questions before allowing
		# them to delete the account
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password)
		end
end
