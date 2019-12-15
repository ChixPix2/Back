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

ActiveRecord::Schema.define(version: 2019_12_15_163458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "thirdName"
    t.string "phone"
    t.bigint "companies_id"
    t.index ["companies_id"], name: "index_clients_on_companies_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "type"
  end

  create_table "positions", force: :cascade do |t|
    t.string "post"
  end

  create_table "results", force: :cascade do |t|
    t.string "description"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.date "beginning"
    t.date "deadline"
    t.date "finished"
    t.string "conclusion"
    t.bigint "result_id"
    t.bigint "users_id"
    t.bigint "clients_id"
    t.index ["clients_id"], name: "index_tasks_on_clients_id"
    t.index ["result_id"], name: "index_tasks_on_result_id"
    t.index ["users_id"], name: "index_tasks_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "firstName"
    t.string "secondName"
    t.string "thirdName"
    t.date "date"
    t.string "access"
    t.bigint "positions_id"
    t.index ["positions_id"], name: "index_users_on_positions_id"
  end

end
