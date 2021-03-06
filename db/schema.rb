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

ActiveRecord::Schema.define(version: 20150901201720) do

  create_table "catalogs", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "catalogs", ["name"], name: "index_catalogs_on_name", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255,                              null: false
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10, default: 0, null: false
    t.integer  "catalog_id",  limit: 4,                                null: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  add_index "products", ["catalog_id", "name"], name: "index_products_on_catalog_id_and_name", unique: true, using: :btree
  add_index "products", ["catalog_id"], name: "index_products_on_catalog_id", using: :btree

  add_foreign_key "products", "catalogs"
end
