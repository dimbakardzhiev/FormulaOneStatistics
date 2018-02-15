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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180215135734) do
=======
ActiveRecord::Schema.define(version: 20180215143000) do
>>>>>>> d89ed2c796d6081b946de48b1b6628be74ad3ffb

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructorresults", force: :cascade do |t|
    t.integer "race_id"
    t.integer "constructor_id"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructors", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "forename"
    t.string "surname"
    t.date "dob"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.integer "year"
    t.integer "round"
    t.integer "circuit_id"
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "constructor_id"
    t.integer "grid"
    t.integer "position"
    t.integer "rank"
<<<<<<< HEAD
    t.integer "points"
=======
>>>>>>> d89ed2c796d6081b946de48b1b6628be74ad3ffb
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "points"
  end

end
