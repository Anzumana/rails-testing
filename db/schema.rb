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

ActiveRecord::Schema.define(:version => 20140119094158) do

  create_table "bids", :force => true do |t|
    t.text     "paragraph"
    t.integer  "idnumber"
    t.boolean  "p1"
    t.boolean  "p2"
    t.boolean  "p3"
    t.boolean  "p4"
    t.boolean  "p5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "p6"
  end

  create_table "user_dbs", :force => true do |t|
    t.integer  "idnumber"
    t.boolean  "p1"
    t.boolean  "p2"
    t.boolean  "p3"
    t.boolean  "p4"
    t.boolean  "p5"
    t.boolean  "p6"
    t.text     "paragraph"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "userName"
  end

  create_table "users", :force => true do |t|
    t.string   "userName"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
  end

end
