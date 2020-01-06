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

ActiveRecord::Schema.define(version: 2020_01_06_052628) do

  create_table "advertisements", force: :cascade do |t|
    t.text "a_image_link"
    t.text "a_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cloths", force: :cascade do |t|
    t.integer "c_u_id"
    t.text "c_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.text "p_pc_text"
    t.text "p_memo"
    t.integer "p_u_id"
    t.integer "p_r_id"
    t.integer "p_bc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "r_title"
    t.text "r_memo"
    t.datetime "r_limit"
    t.boolean "is_selected_bc"
    t.integer "r_u_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "u_name"
    t.string "u_mail"
    t.string "u_password"
    t.text "u_icon"
    t.integer "u_month_bc"
    t.integer "u_total_bc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
