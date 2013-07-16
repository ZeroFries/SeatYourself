require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  setup do 
  	@customer = FactoryGirl.create :customer
  end

  test "user needs a name" do
  	@customer.name = ""

  	assert !@customer.save
	end
end
