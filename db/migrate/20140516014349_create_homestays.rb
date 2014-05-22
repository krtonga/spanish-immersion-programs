class CreateHomestays < ActiveRecord::Migration
  def change
    create_table :homestays do |t|
      t.integer :price_wk
      t.integer :price_night
      t.integer :num_meals
      t.integer :occupancy
      t.text :price_change
      t.text :description
      t.references :school

      t.timestamps
    end
  end
end
