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

	test "user needs a password" do
		@customer2 = Customer.new
		@customer2.name = "hihihi"
		@customer2.email = "test@test.com"
		@customer2.password = ""

		assert !@customer2.save
	end

	test "cannot have duplicate emails" do
		@customer3 = FactoryGirl.build :customer

		assert !@customer3.save
	end

	# need tests for loyalty pts and making reservations and such
end
