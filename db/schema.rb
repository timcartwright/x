# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151226074304) do

  create_table "accomplishments", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accomplishments", ["player_id"], name: "index_accomplishments_on_player_id"
  add_index "accomplishments", ["task_id"], name: "index_accomplishments_on_task_id"

  create_table "clues", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "riddle"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "clues", ["location_id"], name: "index_clues_on_location_id"

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "instructions"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "lat"
    t.decimal  "long"
    t.integer  "game_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "clue"
  end

  add_index "locations", ["game_id"], name: "index_locations_on_game_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["game_id"], name: "index_players_on_game_id"

  create_table "solutions", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "clue_id"
    t.boolean  "solved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "solutions", ["clue_id"], name: "index_solutions_on_clue_id"
  add_index "solutions", ["player_id"], name: "index_solutions_on_player_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["location_id"], name: "index_tasks_on_location_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
