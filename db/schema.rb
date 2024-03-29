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

ActiveRecord::Schema.define(version: 20140323040151) do

  create_table "apps", force: true do |t|
    t.string   "name"
    t.string   "thumbnail"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "operatingsystem_id"
  end

  add_index "apps", ["category_id"], name: "index_apps_on_category_id"
  add_index "apps", ["operatingsystem_id"], name: "index_apps_on_operatingsystem_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "functions", ["category_id"], name: "index_functions_on_category_id"

  create_table "operatingsystems", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "values", force: true do |t|
    t.integer  "app_id"
    t.integer  "function_id"
    t.float    "valuenumber"
    t.string   "valuestring"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
