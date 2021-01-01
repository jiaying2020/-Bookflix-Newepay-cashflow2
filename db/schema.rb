# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_27_175209) do

  create_table "payments", force: :cascade do |t|
    t.integer "pledge_id"
    t.string "merchant_order_no"
    t.integer "end_price"
    t.integer "status", default: 0, null: false
    t.datetime "paid_date"
    t.datetime "unpaid_payment_expire_date"
    t.integer "transaction_service_provider"
    t.string "third_party_payment_id"
    t.string "time_stamp"
    t.integer "payment_type"
    t.string "bank_code"
    t.string "code_no"
    t.string "cvs_code"
    t.string "barcode_1"
    t.string "barcode_2"
    t.string "barcode_3"
    t.string "buyer_account_code"
    t.string "payment_type_charging_fee"
    t.string "credit_card_number"
    t.string "auth"
    t.string "inst"
    t.string "inst_first"
    t.string "inst_each"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pledge_id"], name: "index_payments_on_pledge_id"
  end

  create_table "pledges", force: :cascade do |t|
    t.integer "prodoct_id"
    t.string "prodoct_name"
    t.datetime "issue_date"
    t.integer "status", default: 0, null: false
    t.integer "prodoct_price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prodoct_id"], name: "index_pledges_on_prodoct_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
