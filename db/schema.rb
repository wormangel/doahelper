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

ActiveRecord::Schema.define(version: 20170702124018) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "costumes", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "number"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "pic_official_file_name"
    t.string   "pic_official_content_type"
    t.integer  "pic_official_file_size"
    t.datetime "pic_official_updated_at"
    t.string   "pic_ingame_file_name"
    t.string   "pic_ingame_content_type"
    t.integer  "pic_ingame_file_size"
    t.datetime "pic_ingame_updated_at"
    t.string   "name"
  end

  create_table "dlc_characters", force: :cascade do |t|
    t.integer  "dlc_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "dlc_characters", ["character_id"], name: "index_dlc_characters_on_character_id"
  add_index "dlc_characters", ["dlc_id"], name: "index_dlc_characters_on_dlc_id"

  create_table "dlc_costumes", force: :cascade do |t|
    t.integer  "dlc_id"
    t.integer  "costume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dlc_costumes", ["costume_id"], name: "index_dlc_costumes_on_costume_id"
  add_index "dlc_costumes", ["dlc_id"], name: "index_dlc_costumes_on_dlc_id"

  create_table "dlcs", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "release_date"
  end

end
