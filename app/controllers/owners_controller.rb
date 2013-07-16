class OwnersController < ApplicationController
	def new
		@owner = owner.new
	end

	def create
		@owner = owner.create owner_params
		if @owner.save
			session[:user_id] = @owner.id
		else
			render :new
		end
	end

	private

		def owner_params
			params.require(:owner).permit :email, :password
		end
end
