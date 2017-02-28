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

ActiveRecord::Schema.define(version: 20170228195603) do

  create_table "healths", force: :cascade do |t|
    t.datetime "date_of_birth"
    t.string   "pincode"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motors", force: :cascade do |t|
    t.string   "vehicle_id"
    t.datetime "registration_date"
    t.datetime "policy_start_date"
    t.datetime "policy_end_date"
    t.string   "rto_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "payment_method_id"
    t.decimal  "amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
  end

  create_table "policies", force: :cascade do |t|
    t.integer  "payment_id"
    t.integer  "quote_id"
    t.integer  "user_id"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_policies_on_payment_id"
    t.index ["quote_id"], name: "index_policies_on_quote_id"
    t.index ["user_id"], name: "index_policies_on_user_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quote_id"
    t.integer  "insurer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurer_id"], name: "index_proposals_on_insurer_id"
    t.index ["product_id"], name: "index_proposals_on_product_id"
    t.index ["quote_id"], name: "index_proposals_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "product_type_id"
    t.integer  "insurer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["insurer_id"], name: "index_quotes_on_insurer_id"
    t.index ["product_type_id"], name: "index_quotes_on_product_type_id"
  end

  create_table "travels", force: :cascade do |t|
    t.string   "from_country"
    t.string   "to_country"
    t.string   "from_city"
    t.string   "to_city"
    t.datetime "start_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
