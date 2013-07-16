require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
	setup do
		@owner = FactoryGirl.create :owner
		@restaurant = FactoryGirl.build :restaurant
		@restaurant.owner = @owner
		@restaurant.save
	end

	test "restaurant has owner" do
		assert !@restaurant.owner.nil?
	end

	test "restaunt needs price range" do
		@restaurant.price_range = nil

		assert !@restaurant.save
	end

	test "price range is between 1 and 5" do
		@restaurant.price_range = 0

		assert !@restaurant.save

		@restaurant.price_range = 6

		assert !@restaurant.save
	end

	test "has address" do
		@restaurant.address = ""

		assert !@restaurant.save
	end

	test "has neighbourhood" do
		@restaurant.neighbourhood = ""

		assert !@restaurant.save
	end
end
