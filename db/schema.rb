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

ActiveRecord::Schema.define(version: 2019_05_28_161455) do

  create_table "broadway_shows", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.boolean "in_theaters"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "number_of_people"
    t.integer "seat_number"
    t.string "time"
    t.string "date"
    t.integer "broadway_show_id"
    t.integer "customer_id"
  end

end
