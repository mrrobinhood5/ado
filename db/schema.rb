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

ActiveRecord::Schema.define(version: 20150331051905) do

  create_table "items", force: true do |t|
    t.string   "nsn"
    t.string   "nomen"
    t.string   "size"
    t.integer  "qty_auth"
    t.integer  "qty_order"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["order_id"], name: "index_items_on_order_id"

  create_table "orders", force: true do |t|
    t.string   "docnum"
    t.string   "status"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
