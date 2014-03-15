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

ActiveRecord::Schema.define(version: 20140315112226) do

  create_table "abouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calculates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "iso3166cc"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.integer  "salutation_id"
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["salutation_id"], name: "index_customers_on_salutation_id"

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.string   "materialName"
    t.decimal  "energyProperty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "customer_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["customer_id"], name: "index_messages_on_customer_id"

  create_table "salutations", force: true do |t|
    t.string   "salutation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["email"], name: "index_teams_on_email", unique: true
  add_index "teams", ["reset_password_token"], name: "index_teams_on_reset_password_token", unique: true

  create_table "windows", force: true do |t|
    t.string   "brandname"
    t.integer  "manufacturer_id"
    t.decimal  "layers"
    t.integer  "materials_id"
    t.decimal  "price"
    t.decimal  "height"
    t.decimal  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "windows", ["manufacturer_id"], name: "index_windows_on_manufacturer_id"
  add_index "windows", ["materials_id"], name: "index_windows_on_materials_id"

end
