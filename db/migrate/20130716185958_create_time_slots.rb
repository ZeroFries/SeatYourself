class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.datetime :time
      t.boolean :available, default: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
