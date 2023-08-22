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

ActiveRecord::Schema[7.0].define(version: 2023_08_22_084902) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", primary_key: "goal_id", id: :serial, force: :cascade do |t|
    t.integer "entry_id", null: false
    t.string "title", limit: 25
    t.text "content"
    t.boolean "reached", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_id"], name: "index_goals_on_entry_id"
  end

  create_table "journal_entries", primary_key: "entry_id", id: :serial, force: :cascade do |t|
    t.integer "journal_id", null: false
    t.integer "user_id", null: false
    t.string "file_path"
    t.string "title", limit: 25
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_journal_entries_on_journal_id"
    t.index ["user_id"], name: "index_journal_entries_on_user_id"
  end

  create_table "journals", primary_key: "journal_id", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", limit: 25
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "tasks", primary_key: "task_id", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", limit: 25
    t.text "content"
    t.date "deadline"
    t.integer "importance"
    t.string "status", default: "to do"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_user_tasks_on_task_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "fist_name", limit: 25
    t.string "last_name", limit: 25
    t.string "role", default: "user"
    t.text "description"
    t.date "date_of_birth"
    t.date "joining_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
