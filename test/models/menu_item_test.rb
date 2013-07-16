require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  setup do
  	@restaurant = FactoryGirl.create :restaurant
  	@menu_item = FactoryGirl.build :menu_item
  	@menu_item.restaurant = @restaurant
  	@menu_item.save
  end

  test "item has restaurant" do
  	assert !@menu_item.restaurant.nil?
  end

  test "has name" do
  	@menu_item.name = ""

  	assert !@menu_item.save
  end

  test "has description" do
  	@menu_item.description = ""

  	assert !@menu_item.save
  end
end
