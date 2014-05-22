class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :website
      t.string :city
      t.string :address
      t.string :phone
      t.string :email

      t.string :founded_by
      t.integer :year_founded
      t.text :accreditation
      t.integer :num_teachers
      t.integer :av_years_experience
      t.integer :teacher_pay
      t.integer :num_tot_students

      t.boolean :openings
      t.text :openings

      t.text :summary
      t.text :methods
      t.text :materials
      t.text :soc_activities
      t.boolean :volunteering_op
      t.text :volunteering_op
      t.text :soc_initiatives
      t.text :host_families
      t.text :get_there
      t.text :more_info

      t.integer :touristy

      t.boolean :mayan_lang
      t.boolean :childrens_prog
      t.boolean :teens_prog
      t.boolean :seniors_prog
      t.boolean :professional_prog
      t.string  :prof_prog_descrip
      t.boolean :sp_teachers_prog
      t.boolean :distance_edu
      t.string  :distance_descrip
      t.boolean :test_prep
      t.string  :test_prep_descrip
      t.boolean :other_prog
      t.string  :other_prog_descrip
      t.boolean :disability_accesib
      t.boolean :airport_pickup

      t.integer :admin_fee
      t.integer :per_hr_private
      t.integer :per_hr_group
      t.integer :max_students_per_class
      t.text    :homestay
      t.integer :homestay_price
      t.boolean :meals_incl
      t.integer :meals_add_price


      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.timestamps
    end
  end
end
