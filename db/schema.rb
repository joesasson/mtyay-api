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

ActiveRecord::Schema.define(version: 20170214194133) do

  create_table "accounts", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "commutes", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.string   "time"
    t.string   "nickname"
    t.boolean  "available"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_interests", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profile_purposes", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "purpose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.text     "bio"
    t.string   "picture"
    t.string   "zipcode"
    t.string   "phone"
    t.integer  "login_count"
    t.datetime "last_login"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "goodreads"
    t.string   "skype"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "purposes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.integer  "mta_id"
    t.text     "gps"
    t.string   "line"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
