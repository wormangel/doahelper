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

ActiveRecord::Schema.define(version: 20170624192137) do

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

end
