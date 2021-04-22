class User::RegistrationController < ApplicationController
	def new
	  @user = User.new
	end

	def create
	    @user = User.new(user_params)
	    if @user.save
	      sign_in @user
	      redirect_to root_path, notice: "User succesfully created!" 
	    else
	        render :new
	    end
	end

	def edit
	   @user = User.find(@user.id)
	end


	def update
	  @user = User.find(@user.id)
	  @user.update(user_params)
	  sign_in @user
	  redirect_to root_path
	end

	 private
	 def user_params
	 	 params.require(:user).permit(:email,:user_name,:first_name,:mobile_number,:password,:password_confirmation,:main_image)
	 end
end
