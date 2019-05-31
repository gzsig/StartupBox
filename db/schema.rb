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

ActiveRecord::Schema.define(version: 2019_05_31_175303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investments", force: :cascade do |t|
    t.bigint "startup_id"
    t.bigint "person_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_investments_on_person_id"
    t.index ["startup_id"], name: "index_investments_on_startup_id"
  end

  create_table "owners", force: :cascade do |t|
    t.bigint "startup_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_owners_on_person_id"
    t.index ["startup_id"], name: "index_owners_on_startup_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "logo"
    t.string "pitch"
    t.text "about"
    t.string "founded"
    t.string "number_of_employees"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "youtube"
    t.string "linkedin"
    t.string "market"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "investments", "people"
  add_foreign_key "investments", "startups"
  add_foreign_key "owners", "people"
  add_foreign_key "owners", "startups"
end
