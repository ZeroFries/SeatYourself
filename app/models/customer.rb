class Customer < ActiveRecord::Base
	has_secure_password

	validates :name, presence: true
end
