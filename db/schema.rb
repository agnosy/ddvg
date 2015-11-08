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

ActiveRecord::Schema.define(version: 20151108071010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audios", force: :cascade do |t|
    t.string   "src"
    t.text     "text"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customs", force: :cascade do |t|
    t.integer  "state_id"
    t.string   "url"
    t.integer  "next_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "customs", ["next_id"], name: "index_customs_on_next_id", using: :btree
  add_index "customs", ["state_id"], name: "index_customs_on_state_id", using: :btree

  create_table "grammars", force: :cascade do |t|
    t.string   "src"
    t.text     "text"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "listens", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "prompt_id"
    t.integer  "help_id"
    t.integer  "noinput_id"
    t.integer  "nomatch_id"
    t.string   "inputtype"
    t.integer  "grammar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "listens", ["grammar_id"], name: "index_listens_on_grammar_id", using: :btree
  add_index "listens", ["help_id"], name: "index_listens_on_help_id", using: :btree
  add_index "listens", ["noinput_id"], name: "index_listens_on_noinput_id", using: :btree
  add_index "listens", ["nomatch_id"], name: "index_listens_on_nomatch_id", using: :btree
  add_index "listens", ["prompt_id"], name: "index_listens_on_prompt_id", using: :btree
  add_index "listens", ["state_id"], name: "index_listens_on_state_id", using: :btree

  create_table "says", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "audio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "says", ["audio_id"], name: "index_says_on_audio_id", using: :btree
  add_index "says", ["state_id"], name: "index_says_on_state_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.integer  "campaign_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "states", ["campaign_id"], name: "index_states_on_campaign_id", using: :btree

  create_table "transitions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "from_state_id"
    t.integer  "to_state_id"
    t.string   "condition"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "transitions", ["from_state_id"], name: "index_transitions_on_from_state_id", using: :btree
  add_index "transitions", ["to_state_id"], name: "index_transitions_on_to_state_id", using: :btree

  add_foreign_key "customs", "states"
  add_foreign_key "listens", "grammars"
  add_foreign_key "listens", "states"
  add_foreign_key "says", "audios"
  add_foreign_key "says", "states"
  add_foreign_key "states", "campaigns"
end
