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

ActiveRecord::Schema[7.0].define(version: 2024_07_16_162537) do
  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "price_total", null: false
    t.string "year", null: false
    t.string "distance", null: false
    t.string "inspection", null: false
    t.string "color", null: false
    t.string "car_name", null: false
    t.string "car_model", null: false
    t.text "rec_point", null: false
    t.text "grade", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
