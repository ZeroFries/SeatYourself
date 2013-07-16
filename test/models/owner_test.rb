require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  setup do
		@owner = FactoryGirl.create :owner
	end

	test "owner needs an email" do
		@owner.email = ""

  	assert !@owner.save
	end

	test "owner needs a VALID email" do
		@owner.email = "test"

  	assert !@owner.save
	end

	test "owner needs a password" do
		@owner2 = Owner.new
		@owner2.email = "test@test.com"
		@owner2.password = ""

		assert !@owner2.save
	end

	test "cannot have duplicate emails" do
		@owner3 = FactoryGirl.build :owner

		assert !@owner3.save
	end
end
