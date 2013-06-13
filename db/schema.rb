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

ActiveRecord::Schema.define(:version => 20130608071150) do

  create_table "contacts", :force => true do |t|
    t.string   "email"
    t.string   "message"
    t.string   "messagetype"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "serialnumber"
    t.string   "title"
    t.integer  "section"
    t.integer  "course"
    t.string   "startdate"
    t.string   "enddate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "programs_users", :force => true do |t|
    t.integer  "program_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "givenname"
    t.string   "surname"
    t.string   "gender"
    t.integer  "age"
    t.integer  "grade"
    t.string   "organization"
    t.string   "email"
    t.string   "phone"
    t.string   "interest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
