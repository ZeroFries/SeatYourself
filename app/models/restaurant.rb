class Restaurant < ActiveRecord::Base
	# associations
  belongs_to :owner
  has_many :menu_items
  has_many :time_slots
  has_many :reservations
  has_many :customers, through: :reservations

  # validations
  validates :price_range, presence: true, inclusion: (1..5)
  validates :address, :neighbourhood, :name, presence: true

  # callbacks
end
