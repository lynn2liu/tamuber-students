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

ActiveRecord::Schema.define(version: 20191210213220) do

  create_table "cart_routes", force: :cascade do |t|
    t.decimal "length"
    t.string "startPoint"
    t.string "endPoint"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_cart_routes_on_trip_id"
  end

  create_table "carts", force: :cascade do |t|
    t.string "IP"
    t.boolean "inUse"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seat_count"
    t.boolean "handicap_access"
    t.datetime "last_busy_check"
    t.index ["trip_id"], name: "index_carts_on_trip_id"
  end

  create_table "coordinates", force: :cascade do |t|
    t.decimal "lat"
    t.decimal "lng"
    t.bigint "cart_route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_route_id"], name: "index_coordinates_on_cart_route_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "cart_route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
