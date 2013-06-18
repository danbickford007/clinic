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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130617182553) do

  create_table "appointments", :force => true do |t|
    t.datetime "visit_date"
    t.integer  "pet_id"
    t.integer  "customer_id"
    t.boolean  "reminder"
    t.string   "reason_for_visit"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "vet_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "pet_type"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.datetime "last_visit"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "customer_id"
  end

  create_table "vets", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "degree"
    t.integer  "years"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
