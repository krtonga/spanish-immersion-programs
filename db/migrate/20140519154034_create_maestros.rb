class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :email
      t.string :phone_number
      t.text :history
      t.text :teaching_methodology
      t.text :other
      t.string :profile_pic
      t.references :school
      t.string :password_digest
      t.timestamps
    end
  end
end
