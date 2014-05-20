# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140519223253) do

  create_table "courses", force: true do |t|
    t.integer  "hrs_per_wk"
    t.integer  "per_hr_grp"
    t.text     "price_change"
    t.text     "description"
    t.boolean  "homestay_incl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
    t.integer  "price"
    t.string   "name"
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id"

  create_table "homestays", force: true do |t|
    t.integer  "price_wk"
    t.integer  "price_night"
    t.integer  "num_meals"
    t.integer  "occupancy"
    t.text     "price_change"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
  end

  add_index "homestays", ["school_id"], name: "index_homestays_on_school_id"

  create_table "maestros", force: true do |t|
    t.string   "email"
    t.string   "phone_number"
    t.text     "history"
    t.text     "teaching_methodology"
    t.text     "other"
    t.string   "profile_pic"
    t.integer  "school_id"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "city"
    t.string   "address"
    t.string   "founded_by"
    t.integer  "year_founded"
    t.text     "accreditation"
    t.integer  "num_teachers"
    t.integer  "av_years_experience"
    t.integer  "teacher_pay"
    t.integer  "num_tot_students"
    t.text     "openings"
    t.text     "summary"
    t.text     "methods"
    t.text     "materials"
    t.text     "soc_activities"
    t.text     "volunteering_op"
    t.text     "soc_initiatives"
    t.text     "host_families"
    t.text     "get_there"
    t.text     "more_info"
    t.integer  "touristy"
    t.boolean  "mayan_lang"
    t.boolean  "childrens_prog"
    t.boolean  "teens_prog"
    t.boolean  "seniors_prog"
    t.boolean  "professional_prog"
    t.string   "prof_prog_descrip"
    t.boolean  "sp_teachers_prog"
    t.boolean  "distance_edu"
    t.string   "distance_descrip"
    t.boolean  "test_prep"
    t.boolean  "other_prog"
    t.string   "other_progr_descr"
    t.boolean  "disability_accesib"
    t.boolean  "airport_pickup"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_fee"
    t.integer  "per_hr_private"
    t.integer  "per_hr_group"
    t.integer  "max_students_per_class"
    t.string   "phone"
    t.string   "email"
  end

end
