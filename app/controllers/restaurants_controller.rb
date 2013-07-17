class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create restaurant_params
		if @restaurant.save
			redirect_to @restaurant, notice: "Restaurant successfully added. Start filling out your menu"
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def index
		@restaurants = Restaurant.all.reverse
	end

	def show
		@restaurant = Restaurant.find params[:id]
		# if current_user == restaurant.owner, do one thing, else show regular show page for customers
	end

	def destroy
	end

	private

		def restaurant_params
			params.require(:restaurant).permit :name, :address, :neighbourhood, :price_range, :summary
		end
end
