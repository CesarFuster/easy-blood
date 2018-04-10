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

ActiveRecord::Schema.define(version: 20180410180545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "location"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_campaigns_on_institution_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_donations_on_campaign_id"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email_resp"
    t.string "name_resp"
    t.string "phone_number_resp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_records", force: :cascade do |t|
    t.float "weight"
    t.float "height"
    t.date "birth_date"
    t.date "last_donation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_medical_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "address"
    t.string "phone_number"
    t.string "blood_type"
    t.string "available_monday", default: "Indisponível"
    t.string "available_tuesday", default: "Indisponível"
    t.string "available_wednesday", default: "Indisponível"
    t.string "available_thursday", default: "Indisponível"
    t.string "available_friday", default: "Indisponível"
    t.string "available_saturday", default: "Indisponível"
    t.string "available_sunday", default: "Indisponível"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaigns", "institutions"
  add_foreign_key "donations", "campaigns"
  add_foreign_key "donations", "users"
  add_foreign_key "medical_records", "users"
end
