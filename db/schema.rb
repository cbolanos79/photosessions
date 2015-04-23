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

ActiveRecord::Schema.define(version: 20150423223434) do

  create_table "gears", force: :cascade do |t|
    t.string   "name"
    t.string   "owner"
    t.boolean  "borrowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gears_sessions", id: false, force: :cascade do |t|
    t.integer "gear_id"
    t.integer "session_id"
  end

  add_index "gears_sessions", ["gear_id"], name: "index_gears_sessions_on_gear_id"
  add_index "gears_sessions", ["session_id"], name: "index_gears_sessions_on_session_id"

  create_table "sessions", force: :cascade do |t|
    t.string   "title"
    t.string   "session_type"
    t.datetime "datetime"
    t.string   "place_name"
    t.string   "place_coordinates"
    t.text     "dressing"
    t.text     "props"
    t.text     "makeup"
    t.text     "hair"
    t.string   "status"
    t.text     "description"
    t.text     "annotations"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "sessions_users", id: false, force: :cascade do |t|
    t.integer "session_id"
    t.integer "user_id"
  end

  add_index "sessions_users", ["session_id"], name: "index_sessions_users_on_session_id"
  add_index "sessions_users", ["user_id"], name: "index_sessions_users_on_user_id"

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
