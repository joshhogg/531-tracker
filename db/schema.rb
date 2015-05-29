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

ActiveRecord::Schema.define(version: 20150527031958) do

  create_table "lifters", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "one_rep_maxes", force: :cascade do |t|
    t.integer  "deadlift"
    t.integer  "squat"
    t.integer  "benchpress"
    t.integer  "overheadpress"
    t.integer  "lifter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "one_rep_maxes", ["lifter_id", "created_at"], name: "index_one_rep_maxes_on_lifter_id_and_created_at"
  add_index "one_rep_maxes", ["lifter_id"], name: "index_one_rep_maxes_on_lifter_id"

end
