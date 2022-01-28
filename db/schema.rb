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

ActiveRecord::Schema.define(version: 2022_01_27_164247) do

  create_table "chubus", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chugokus", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hokkaidos", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kantos", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinkis", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kyusyus", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "okinawas", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shikokus", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tohokus", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "title"
    t.text "caption"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
