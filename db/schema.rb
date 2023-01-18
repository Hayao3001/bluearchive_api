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

ActiveRecord::Schema[7.0].define(version: 2023_01_18_142027) do
  create_table "students", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "full_name"
    t.string "rarity"
    t.string "role"
    t.string "position"
    t.string "attack_class"
    t.string "weapon_type"
    t.string "shelter"
    t.string "attack_type"
    t.string "defensive_type"
    t.string "academy"
    t.string "club"
    t.string "age"
    t.string "birthday"
    t.string "stature"
    t.string "hobby"
    t.string "design"
    t.string "illustration"
    t.string "CV"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
