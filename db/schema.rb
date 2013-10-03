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

ActiveRecord::Schema.define(version: 20131001113655) do

  create_table "activity_reports", force: true do |t|
    t.string   "user_name"
    t.string   "course_name"
    t.integer  "score"
    t.boolean  "pass_fail"
    t.date     "date_taken"
    t.date     "requal_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "requal_interval"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.integer  "course_id"
    t.integer  "score"
    t.boolean  "pass"
    t.date     "completed_date"
    t.date     "requal_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_reports", force: true do |t|
    t.string   "user_name"
    t.string   "course_name"
    t.date     "date_taken"
    t.date     "requal_date"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
