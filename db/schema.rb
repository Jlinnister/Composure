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

ActiveRecord::Schema.define(version: 20160831235131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string   "url",                            null: false
    t.string   "med_url",                        null: false
    t.integer  "position",                       null: false
    t.integer  "group_position",                 null: false
    t.boolean  "full_width",     default: false, null: false
    t.integer  "story_id",                       null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "photos", ["group_position"], name: "index_photos_on_group_position", using: :btree
  add_index "photos", ["position"], name: "index_photos_on_position", using: :btree
  add_index "photos", ["story_id"], name: "index_photos_on_story_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "description"
    t.integer  "user_id",        null: false
    t.integer  "cover_image_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "stories", ["cover_image_id"], name: "index_stories_on_cover_image_id", using: :btree
  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "text_areas", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "position",   null: false
    t.integer  "story_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "text_areas", ["story_id"], name: "index_text_areas_on_story_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",            null: false
    t.string   "email",               null: false
    t.string   "avatar_url"
    t.text     "profile_title"
    t.text     "profile_description"
    t.text     "website_url"
    t.string   "password_digest",     null: false
    t.string   "session_token",       null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
