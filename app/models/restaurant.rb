class Restaurant < ActiveRecord::Base
	# associations
  belongs_to :owner

  # validations
  validates :price_range, presence: true, inclusion: (1..5)
  validates :address, :neighbourhood, presence: true

  # callbacks
end
