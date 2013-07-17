class CustomersController < ApplicationController
	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create customer_params
		if @customer.save
			session[:user_id] = @customer.id
			redirect_to @customer, notice: "Welcome to SeatYourself!"
		else
			render :new
		end
	end

	def show
		@customer = Customer.find params[:id]
	end

	private

		def customer_params
			params.require(:customer).permit :name, :email, :password
		end
end
