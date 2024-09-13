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

ActiveRecord::Schema.define(version: 2024_09_13_031729) do

  create_table "comments", force: :cascade do |t|
    t.text "body", null: false
    t.integer "project_conversation_histories_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_conversation_history_id"
    t.index ["project_conversation_histories_id"], name: "index_comments_on_project_conversation_histories_id"
    t.index ["project_conversation_history_id"], name: "index_comments_on_project_conversation_history_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "comments_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comments_id"], name: "index_conversations_on_comments_id"
  end

  create_table "project_conversation_histories", force: :cascade do |t|
    t.string "title"
    t.integer "project_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "project_conversation_histories"
  add_foreign_key "comments", "project_conversation_histories", column: "project_conversation_histories_id"
  add_foreign_key "conversations", "comments", column: "comments_id"
end
