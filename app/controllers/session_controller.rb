class SessionController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user.where(email: params[:email]).first
		if @user && @user.authenticate params[:password]
			session[:user_id] = @user.id
			redirect_to @user, notice: "Logged in"
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end
