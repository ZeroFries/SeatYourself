class Restaurant < ActiveRecord::Base
	# associations
  belongs_to :owner

  # validations
  validates :price_range, presence: true, inclusion: (1..5)

  # callbacks
end
