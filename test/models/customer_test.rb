require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  setup do 
  	@customer = FactoryGirl.create :customer
  end

  test "user needs a name" do
  	@customer.name = ""

  	assert !@customer.save
	end

	test "user needs an email" do
		@customer.email = ""

  	assert !@customer.save
	end

	test "user needs a VALID email" do
		@customer.email = "test"

  	assert !@customer.save
	end
end
