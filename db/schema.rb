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

ActiveRecord::Schema[7.2].define(version: 2024_09_06_102628) do
  create_table "posts", force: :cascade do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shorts", force: :cascade do |t|
    t.string "file"
    t.time "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "taggable_type", null: false
    t.integer "taggable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tag_name_id"
    t.index ["tag_name_id"], name: "index_tags_on_tag_name_id"
    t.index ["taggable_type", "taggable_id"], name: "index_tags_on_taggable"
  end

  create_table "videos", force: :cascade do |t|
    t.string "file"
    t.time "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tags", "tag_names"
end
