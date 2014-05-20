class ChangeAndAddColumns < ActiveRecord::Migration

  def change
    add_column :schools, :admin_fee, :integer
    add_column :schools, :per_hr_private, :integer
    add_column :schools, :per_hr_group, :integer
    add_column :schools, :max_students_per_class, :integer
    add_column :schools, :phone, :string
    add_column :schools, :email, :string

    add_column :courses, :price, :integer
    add_column :courses, :name, :string
    remove_column :courses, :admin_fee
    remove_column :courses, :price_grp
    remove_column :courses, :price_priv
    remove_column :courses, :per_hr_group
    remove_column :courses, :per_hr_priv
    remove_column :courses, :max_students
    remove_column :courses, :schl_id
    add_column :maestros, :name, :string

    remove_column :homestays, :schl_id
  end
end
