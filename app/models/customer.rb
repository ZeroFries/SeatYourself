class Customer < ActiveRecord::Base
	has_secure_password
	valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true
	validates :email, presence: true, format: { with: valid_email }
end
