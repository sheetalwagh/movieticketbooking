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

ActiveRecord::Schema.define(version: 2019_03_07_051151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.string "title"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "credit_card_number"
    t.date "expiry_date"
    t.bigint "showtime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["showtime_id"], name: "index_orders_on_showtime_id"
  end

  create_table "screenings", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "theater_id"
    t.datetime "ondate"
    t.boolean "first"
    t.boolean "second"
    t.boolean "third"
    t.boolean "fourth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "first_seats", default: 100
    t.integer "second_seats", default: 100
    t.integer "third_seats", default: 100
    t.integer "fourth_seats", default: 100
    t.integer "cost", null: false
    t.index ["movie_id"], name: "index_screenings_on_movie_id"
  end

  create_table "showtimes", force: :cascade do |t|
    t.datetime "time"
    t.integer "tickets_sold", default: 0
    t.bigint "movie_id"
    t.bigint "auditorium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auditorium_id"], name: "index_showtimes_on_auditorium_id"
    t.index ["movie_id"], name: "index_showtimes_on_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
