class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :hrs_per_wk
      t.integer :price
      t.text :price_change
      t.text :description
      t.boolean :homestay_incl
      t.references :school

      t.timestamps
    end
  end
end
