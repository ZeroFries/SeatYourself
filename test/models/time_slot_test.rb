require 'test_helper'

class TimeSlotTest < ActiveSupport::TestCase
  setup do
  	@restaurant = FactoryGirl.create :restaurant
  	@time_slot = FactoryGirl.build :time_slot
  	@time_slot.restaurant = @restaurant
  	@time_slot.save
  end

  test "time_slot has a restaurant" do
  	assert !@time_slot.restaurant.nil?
  end

  test "available by default" do
  	assert @time_slot.available
  end

  # test reservation makes time slot unavailable
end
