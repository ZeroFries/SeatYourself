class Owner < ActiveRecord::Base
	has_secure_password
	valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	# associations
	has_many :restaurants
	has_many :reservations, through: :restaurants

	# validations
	validates :email, presence: true, format: { with: valid_email }, uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 5 }, on: :create

	# call backs
	before_create { |user| user.email.downcase! }
end