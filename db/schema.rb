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

ActiveRecord::Schema.define(version: 2022_03_09_161948) do

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.integer "num_of_rooms"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.string "special_requests"
    t.integer "room_id"
    t.integer "guest_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "room_number"
    t.boolean "reserved"
    t.string "room_type"
    t.integer "price"
    t.integer "hotel_id"
    t.string "imgUrl"
  end

end
