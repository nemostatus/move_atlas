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

ActiveRecord::Schema.define(version: 2020_06_14_124209) do

  create_table "reviews", force: :cascade do |t|
    t.integer "customer_experience_rating"
    t.integer "user_id"
    t.integer "vehicle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_service_rating"
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["vehicle_id"], name: "index_reviews_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "plate_number"
    t.string "plate_state"
    t.string "vehicle_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "pick_up_date"
    t.string "company_name"
    t.boolean "status"
    t.string "bug_type"
  end

end
