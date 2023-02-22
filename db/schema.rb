# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_18_225917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.string "city"
    t.string "cpf"
    t.string "degree_of_instruction"
    t.string "email"
    t.string "fathers_name"
    t.string "mobile_phone"
    t.string "mothers_name"
    t.string "name"
    t.string "nationality"
    t.string "phone"
    t.string "place_of_birth"
    t.string "relationship"
    t.string "state"
    t.string "wedding_date"
    t.date "birth_date"
    t.string "blood_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
