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

ActiveRecord::Schema.define(version: 20170628143329) do

  create_table "feeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "message"
    t.datetime "created_at", default: "2017-06-28 14:37:43", null: false
    t.datetime "updated_at", default: "2017-06-28 14:37:43", null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "user_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mail_id"
    t.datetime "created_at", default: "2017-06-28 14:11:36", null: false
    t.datetime "updated_at", default: "2017-06-28 14:11:36", null: false
    t.bigint "locations_id"
    t.bigint "user_types_id"
    t.index ["locations_id"], name: "index_users_on_locations_id"
    t.index ["user_types_id"], name: "index_users_on_user_types_id"
  end

  add_foreign_key "users", "locations", column: "locations_id"
  add_foreign_key "users", "user_types", column: "user_types_id"
end
