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

ActiveRecord::Schema.define(version: 20151122191530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "race",       null: false
    t.json     "catClasses", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "race"
    t.json     "ch_classes"
    t.integer  "size"
    t.string   "sex"
    t.string   "height"
    t.string   "weight"
    t.string   "eyes"
    t.string   "skin"
    t.string   "hair"
    t.integer  "age"
    t.string   "alignment"
    t.string   "deity"
    t.integer  "init"
    t.json     "speed"
    t.string   "languages"
    t.json     "dr"
    t.integer  "SR"
    t.integer  "res_fire"
    t.integer  "res_ice"
    t.integer  "res_lightning"
    t.integer  "res_acid"
    t.integer  "res_sonic"
    t.integer  "bonus_CMB"
    t.integer  "BAB"
    t.integer  "bonus_CMD"
    t.integer  "STR"
    t.integer  "DEX"
    t.integer  "CON"
    t.integer  "INT"
    t.integer  "WIS"
    t.integer  "CHA"
    t.integer  "AC_armor"
    t.integer  "AC_shield"
    t.integer  "AC_dodge"
    t.integer  "AC_natural"
    t.integer  "AC_deflect"
    t.integer  "AC_misc"
    t.integer  "ACP"
    t.integer  "max_HP"
    t.integer  "current_HP"
    t.integer  "temp_HP"
    t.integer  "nonlethal"
    t.integer  "fortitude"
    t.integer  "reflex"
    t.integer  "will"
    t.integer  "temp_fortitude"
    t.integer  "temp_reflex"
    t.integer  "temp_will"
    t.json     "acrobatics"
    t.json     "appraise"
    t.json     "bluff"
    t.json     "climb"
    t.json     "craft"
    t.json     "diplomacy"
    t.json     "disable_device"
    t.json     "disguise"
    t.json     "escape_artist"
    t.json     "fly"
    t.json     "handle_animal"
    t.json     "heal"
    t.json     "intimidate"
    t.json     "knowledge"
    t.json     "linguistics"
    t.json     "perception"
    t.json     "perform"
    t.json     "profession"
    t.json     "ride"
    t.json     "sense_motive"
    t.json     "slight_of_hand"
    t.json     "spellcraft"
    t.json     "stealth"
    t.json     "survival"
    t.json     "swim"
    t.json     "use_magic_device"
    t.json     "attacks"
    t.json     "spells"
    t.json     "abilities"
    t.json     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username",                            null: false
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
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
