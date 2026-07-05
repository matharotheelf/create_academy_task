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

ActiveRecord::Schema[8.1].define(version: 2026_07_05_232338) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "video_notes", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "timestamp"
    t.datetime "updated_at", null: false
    t.bigint "video_id", null: false
    t.index ["video_id"], name: "index_video_notes_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "provider", default: 0
    t.string "provider_id"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "video_notes", "videos"
end
