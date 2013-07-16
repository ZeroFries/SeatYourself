require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  setup do
  	@customer = FactoryGirl.create :customer
  	@owner = FactoryGirl.create :owner
  	@restaurant = FactoryGirl.build :restaurant
		@restaurant.owner = @owner
		@restaurant.save
		@time_slot = FactoryGirl.build :time_slot
  	@time_slot.restaurant = @restaurant
  	@time_slot.save
  	@reservation = @restaurant.reservations.build res_time: @time_slot.time
  	@reservation.customer = @customer
  	@reservation.save
  end

  test "reservation has restaurant and customer" do
  	assert !@reservation.customer.nil?
  	assert !@reservation.restaurant.nil?
  end

  test "owner can access reservations" do
  	assert @owner.restaurants.first.reservations.size > 0
  	assert @owner.reservations.size > 0
  end

  test "cannot book if time slot is unavailable" do
  	@time_slot.available = false
  	@time_slot.save
  	@reservation2 = @restaurant.reservations.build res_time: @time_slot.time

  	assert !@reservation2.save
  end
end
