class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :neighbourhood
      t.integer :price_range
      t.text :summary
      t.references :owner, index: true

      t.timestamps
    end
  end
end
