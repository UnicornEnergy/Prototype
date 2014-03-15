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

ActiveRecord::Schema.define(version: 20140314160352) do

  create_table "abouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "iso3166cc"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
