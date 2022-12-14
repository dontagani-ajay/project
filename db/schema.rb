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

ActiveRecord::Schema.define(version: 2022_10_08_153712) do

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "zipcode"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "doctor_id"
    t.string "description"
    t.string "from_date"
    t.string "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "password"
    t.string "specialization"
    t.string "qualification"
    t.float "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.string "expiry_date"
    t.float "price"
    t.boolean "child_safe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "doctor_id"
    t.text "description"
    t.string "notification_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescribed_medicines", force: :cascade do |t|
    t.integer "medicine_id"
    t.integer "prescription_id"
    t.integer "quantity"
    t.integer "dosage"
    t.string "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "doctor_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
