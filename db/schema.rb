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

ActiveRecord::Schema.define(version: 20130716191438) do

  create_table "customers", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "loyalty_pts"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: true do |t|
    t.string   "name"
    t.integer  "price_in_cents"
    t.string   "description"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_items", ["restaurant_id"], name: "index_menu_items_on_restaurant_id"

  create_table "owners", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "customer_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "res_time"
  end

  add_index "reservations", ["customer_id"], name: "index_reservations_on_customer_id"
  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "address"
    t.string   "neighbourhood"
    t.integer  "price_range"
    t.text     "summary"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "restaurants", ["owner_id"], name: "index_restaurants_on_owner_id"

  create_table "time_slots", force: true do |t|
    t.datetime "time"
    t.boolean  "available",     default: true
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_slots", ["restaurant_id"], name: "index_time_slots_on_restaurant_id"

end
