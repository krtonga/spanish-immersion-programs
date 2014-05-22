class AddHomestayColumn < ActiveRecord::Migration
  def change
    add_column :schools, :homestay, :text
    add_column :schools, :homestay_price, :integer
    add_column :schools, :meals_incl, :boolean
    add_column :schools, :meals_add_price, :integer
  end
end
