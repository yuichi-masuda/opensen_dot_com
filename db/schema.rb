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

ActiveRecord::Schema.define(version: 20161221141143) do

  create_table "participant_teams", force: true do |t|
    t.string   "name"
    t.string   "representative"
    t.string   "mail_address"
    t.string   "phone_number"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participant_teams", ["tournament_id"], name: "index_participant_teams_on_tournament_id"

  create_table "teammates", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "participation_event"
    t.integer  "participant_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teammates", ["participant_team_id"], name: "index_teammates_on_participant_team_id"

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.date     "event_date"
    t.string   "place"
    t.string   "athletic_event"
    t.string   "note"
    t.date     "deadline"
    t.boolean  "published",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
