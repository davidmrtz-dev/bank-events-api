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

ActiveRecord::Schema.define(version: 2021_09_13_233021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_informations", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_billing_informations_on_customer_id"
  end

  create_table "charges", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.integer "status"
    t.bigint "purchase_id", null: false
    t.bigint "payment_source_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_source_id"], name: "index_charges_on_payment_source_id"
    t.index ["purchase_id"], name: "index_charges_on_purchase_id"
    t.index ["status"], name: "index_charges_on_status"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "payment_sources", force: :cascade do |t|
    t.integer "source"
    t.datetime "statement_date", precision: 6, null: false
    t.bigint "billing_information_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["billing_information_id"], name: "index_payment_sources_on_billing_information_id"
    t.index ["source", "statement_date"], name: "index_payment_sources_on_source_and_statement_date"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "name"
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.integer "payments"
    t.decimal "fees", precision: 5, scale: 3, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["name", "amount"], name: "index_purchases_on_name_and_amount"
  end

  add_foreign_key "billing_informations", "customers"
  add_foreign_key "charges", "payment_sources"
  add_foreign_key "charges", "purchases"
  add_foreign_key "payment_sources", "billing_informations"
  add_foreign_key "purchases", "customers"
end
