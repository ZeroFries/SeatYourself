class MenuItem < ActiveRecord::Base
	# associations
	belongs_to :restaurant

	# validations
	validates :name, :description, :price_in_cents, presence: true

	# callbacks
end
