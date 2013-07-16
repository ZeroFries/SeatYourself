class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :price_in_cents
      t.string :description
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
