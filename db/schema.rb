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

ActiveRecord::Schema.define(version: 20150514212946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bucketlist_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "certified_hotel_id"
    t.integer  "destination_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "certified_hotels", force: :cascade do |t|
    t.string   "name"
    t.integer  "hotel_id"
    t.integer  "user_id"
    t.string   "certification"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.string   "certification"
    t.string   "category"
    t.text     "desc_prod"
    t.text     "desc_good"
    t.text     "directions"
    t.text     "recommended"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "seo_tags"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_url"
  end

  create_table "hotels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
