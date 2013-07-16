class Reservation < ActiveRecord::Base
	# assocations
  belongs_to :customer
  belongs_to :restaurant

  # validations

  validates :res_time, presence: true

  # callbacks
  before_save :ensure_time_slot_is_available

  private

  	def ensure_time_slot_is_available
  		restaurant = self.restaurant
  		restaurant.time_slots.each do |t|
  			if t.time == self.res_time
  				return t.available
  			end
  		end
  	end
end
