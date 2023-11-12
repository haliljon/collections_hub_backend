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

ActiveRecord::Schema[7.1].define(version: 2023_11_12_111103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "image_url", default: "https://www.logolynx.com/topic/unknown#&gid=1&pid=3"
    t.string "custom_str1_name"
    t.string "custom_str2_name"
    t.string "custom_str3_name"
    t.string "custom_int1_name"
    t.string "custom_int2_name"
    t.string "custom_int3_name"
    t.string "custom_bool1_name"
    t.string "custom_bool2_name"
    t.string "custom_bool3_name"
    t.string "custom_text1_name"
    t.string "custom_text2_name"
    t.string "custom_text3_name"
    t.string "custom_date1_name"
    t.string "custom_date2_name"
    t.string "custom_date3_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "collection_id", null: false
    t.string "name"
    t.string "tags", default: [], array: true
    t.string "custom_str1"
    t.string "custom_str2"
    t.string "custom_str3"
    t.integer "custom_int1"
    t.integer "custom_int2"
    t.integer "custom_int3"
    t.boolean "custom_bool1"
    t.boolean "custom_bool2"
    t.boolean "custom_bool3"
    t.text "custom_text1"
    t.text "custom_text2"
    t.text "custom_text3"
    t.datetime "custom_date1"
    t.datetime "custom_date2"
    t.datetime "custom_date3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_items_on_collection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "collections", "users"
  add_foreign_key "items", "collections"
end
