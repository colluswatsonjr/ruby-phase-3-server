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

ActiveRecord::Schema.define(version: 2022_08_22_225135) do

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.integer "nation_id"
    t.integer "role_id"
  end

  create_table "nations", force: :cascade do |t|
    t.string "nation_name"
    t.string "nation_location"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_title"
    t.string "role_rating"
    t.string "role_description"
  end

end
