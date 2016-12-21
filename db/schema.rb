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

ActiveRecord::Schema.define(version: 20161221123644) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contact_information_modules", force: :cascade do |t|
    t.string   "gender"
    t.string   "name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "woonplaats"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_locations_on_company_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.text     "body"
    t.integer  "vacancy_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "education"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.index ["vacancy_id"], name: "index_reactions_on_vacancy_id"
  end

  create_table "social_media_modules", force: :cascade do |t|
    t.string   "social_media_type"
    t.string   "social_media_value"
    t.integer  "vacancy_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["vacancy_id"], name: "index_social_media_modules_on_vacancy_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacancies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "demands"
    t.string   "branche"
    t.string   "education_level"
    t.text     "experience"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "location"
    t.text     "modules_array"
    t.text     "positions_array"
    t.text     "horizontal_positions_array"
    t.text     "vertical_positions_array"
    t.text     "width_size_array"
    t.text     "height_size_array"
    t.boolean  "online",                     default: false
    t.integer  "location_id"
    t.index ["location_id"], name: "index_vacancies_on_location_id"
  end

  create_table "vacancy_modules", force: :cascade do |t|
    t.string   "module"
    t.integer  "horizontal_position"
    t.integer  "vertical_position"
    t.integer  "width_size"
    t.integer  "hight_size"
    t.integer  "vacancy_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["vacancy_id"], name: "index_vacancy_modules_on_vacancy_id"
  end

end
