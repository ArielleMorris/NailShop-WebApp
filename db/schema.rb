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

ActiveRecord::Schema.define(version: 2021_04_20_023703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_created"
    t.string "client_name"
    t.integer "client_mobile"
    t.decimal "price_service"
    t.string "service_name"
    t.string "technician_name"
    t.decimal "promo_code"
    t.boolean "cancellation"
    t.text "cancellation_reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "technician_id"
    t.index ["technician_id"], name: "index_appointments_on_technician_id"
  end

  create_table "check_ins", force: :cascade do |t|
    t.string "client_name"
    t.string "client_mobile"
    t.integer "service_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.index ["appointment_id"], name: "index_check_ins_on_appointment_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "customer_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.bigint "manager_id"
    t.index ["appointment_id"], name: "index_customers_on_appointment_id"
    t.index ["manager_id"], name: "index_customers_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "manager_firstname"
    t.string "manager_lastname"
    t.string "manager_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "promo_code", limit: 8
    t.integer "discount_flat"
    t.decimal "discount_percent"
    t.string "service_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "service_id"
    t.index ["service_id"], name: "index_promotions_on_service_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "service_code"
    t.string "service_name"
    t.integer "rating_num"
    t.text "ratings_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.index ["appointment_id"], name: "index_reviews_on_appointment_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "from"
    t.datetime "to"
    t.date "days_working"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "technician_id"
    t.index ["technician_id"], name: "index_schedules_on_technician_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.integer "duration"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.index ["appointment_id"], name: "index_services_on_appointment_id"
  end

  create_table "services_bookeds", force: :cascade do |t|
    t.string "service_name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.index ["appointment_id"], name: "index_services_bookeds_on_appointment_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "tech_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "technicians"
  add_foreign_key "check_ins", "appointments"
  add_foreign_key "customers", "appointments"
  add_foreign_key "customers", "managers"
  add_foreign_key "promotions", "services"
  add_foreign_key "reviews", "appointments"
  add_foreign_key "schedules", "technicians"
  add_foreign_key "services", "appointments"
  add_foreign_key "services_bookeds", "appointments"
end
