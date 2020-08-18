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

ActiveRecord::Schema.define(version: 2020_08_18_191950) do

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "caffeine"
    t.boolean "milk"
    t.string "milk_alt"
    t.boolean "sweet"
    t.string "syrups"
    t.boolean "temp"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "time_ordered"
    t.integer "drink_id"
    t.integer "user_id"
    t.index ["drink_id"], name: "index_orders_on_drink_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
