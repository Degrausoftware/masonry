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

ActiveRecord::Schema[7.0].define(version: 2023_03_07_002642) do
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

  create_table "jobs", force: :cascade do |t|
    t.string "address"
    t.string "carrer"
    t.string "city"
    t.string "current_position"
    t.date "employer"
    t.string "monthly_net_income"
    t.string "neihboarhood"
    t.string "phone"
    t.string "practice_another_profession"
    t.date "service_time"
    t.string "state"
    t.string "which"
    t.string "zip_code"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_jobs_on_member_id"
  end

  create_table "lowtons", force: :cascade do |t|
    t.string "cim"
    t.string "mobile_phone"
    t.string "name"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_lowtons_on_member_id"
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
    t.date "wedding_date"
    t.date "birth_date"
    t.string "blood_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_references", force: :cascade do |t|
    t.boolean "mason"
    t.string "mobile_phone"
    t.string "name"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_personal_references_on_member_id"
  end

  create_table "previous_companies", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "name_company"
    t.string "neighboarhood"
    t.string "phone"
    t.string "state"
    t.string "what_positio_did_you_hold"
    t.string "zip_code"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_previous_companies_on_member_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "addiction"
    t.string "debauchery"
    t.string "equality"
    t.string "ethical"
    t.string "fraternity"
    t.string "freedom"
    t.string "toxic"
    t.string "virtue"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_questions_on_member_id"
  end

  create_table "recomendations", force: :cascade do |t|
    t.boolean "father_mason", default: false
    t.string "mobile_phone"
    t.string "name"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_recomendations_on_member_id"
  end

  create_table "sons", force: :cascade do |t|
    t.date "birth_date", null: false
    t.string "gender", null: false
    t.string "name_sons", null: false
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_sons_on_member_id"
  end

  create_table "university_students", force: :cascade do |t|
    t.string "cim"
    t.string "mobile_phone"
    t.string "name"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_university_students_on_member_id"
  end

  create_table "voter_titles", force: :cascade do |t|
    t.string "number"
    t.string "title_city"
    t.string "zone"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_voter_titles_on_member_id"
  end

  create_table "wives", force: :cascade do |t|
    t.date "birth_date"
    t.string "carrer"
    t.string "name"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_wives_on_member_id"
  end

  add_foreign_key "jobs", "members"
  add_foreign_key "lowtons", "members"
  add_foreign_key "personal_references", "members"
  add_foreign_key "previous_companies", "members"
  add_foreign_key "questions", "members"
  add_foreign_key "recomendations", "members"
  add_foreign_key "sons", "members"
  add_foreign_key "university_students", "members"
  add_foreign_key "voter_titles", "members"
  add_foreign_key "wives", "members"
end
