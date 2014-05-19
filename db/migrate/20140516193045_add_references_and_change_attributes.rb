
class AddReferencesAndChangeAttributes < ActiveRecord::Migration
  def change
    rename_column :schools, :describe, :other_progr_descr
    change_table :courses do |t|
      t.references :school, index: true
    end
    change_table :homestays do |t|
      t.references :school, index: true
    end
  end
end
