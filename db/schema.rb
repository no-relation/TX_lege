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

ActiveRecord::Schema.define(version: 2018_10_25_024231) do

  create_table "bills", force: :cascade do |t|
    t.string "title"
    t.string "openstates_id"
    t.string "subjects"
    t.string "lege_id"
  end

  create_table "legislators", force: :cascade do |t|
    t.string "full_name"
    t.string "leg_id"
    t.string "district"
    t.string "party"
    t.string "chamber"
  end

  create_table "sponsorships", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "legislator_id"
    t.string "sponsor_type"
    t.index ["bill_id"], name: "index_sponsorships_on_bill_id"
    t.index ["legislator_id"], name: "index_sponsorships_on_legislator_id"
  end

end
