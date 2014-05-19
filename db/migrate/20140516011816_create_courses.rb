class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :hrs_per_wk
      t.integer :admin_fee
      t.integer :price_grp
      t.integer :price_priv
      t.integer :per_hr_priv
      t.integer :per_hr_grp
      t.integer :max_students
      t.text :price_change
      t.text :description
      t.boolean :homestay_incl

      t.integer :schl_id
      t.timestamps
    end
  end
end
