# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151016200347) do

  create_table "customers", force: :cascade do |t|
    t.string   "name",            limit: 50
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password",        limit: 255
    t.string   "address",         limit: 255
    t.string   "pincode",         limit: 255
    t.string   "password_digest", limit: 255
  end

  create_table "installs", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "installs", ["email"], name: "index_installs_on_email", unique: true, using: :btree
  add_index "installs", ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true, using: :btree

  create_table "instant_carts", force: :cascade do |t|
    t.integer  "prod_id",     limit: 4
    t.integer  "vendor_id",   limit: 4
    t.integer  "customer_id", limit: 4
    t.integer  "quantity",    limit: 4
    t.date     "ondate"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "instant_orders", force: :cascade do |t|
    t.integer  "i_order_id",  limit: 4
    t.date     "timestamp"
    t.integer  "prod_id",     limit: 4
    t.integer  "vendor_id",   limit: 4
    t.integer  "customer_id", limit: 4
    t.integer  "quantity",    limit: 4
    t.date     "ondate"
    t.integer  "i_otp",       limit: 4
    t.integer  "i_status",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "master_product_details", force: :cascade do |t|
    t.integer  "prod_id",    limit: 4
    t.integer  "price",      limit: 4
    t.integer  "prod_type",  limit: 4
    t.string   "company",    limit: 255
    t.integer  "vendor_id",  limit: 4
    t.boolean  "available",  limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "serving_pincodes", force: :cascade do |t|
    t.integer  "vendor_id",  limit: 4
    t.integer  "pincode",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "subscription_carts", force: :cascade do |t|
    t.integer  "prod_id",        limit: 4
    t.integer  "vendor_id",      limit: 4
    t.integer  "customer_id",    limit: 4
    t.integer  "daily_quantity", limit: 4
    t.date     "s_from"
    t.date     "s_to"
    t.integer  "gap",            limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "subscription_orders", force: :cascade do |t|
    t.integer  "s_order_id",     limit: 4
    t.date     "timestamp"
    t.integer  "prod_id",        limit: 4
    t.integer  "vendor_id",      limit: 4
    t.integer  "customer_id",    limit: 4
    t.integer  "daily_quantity", limit: 4
    t.date     "s_from"
    t.date     "s_to"
    t.integer  "gap",            limit: 4
    t.integer  "s_otp",          limit: 4
    t.integer  "s_status",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "pincode",    limit: 255
  end

end
