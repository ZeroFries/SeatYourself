class AddTimeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :res_time, :datetime
  end
end
