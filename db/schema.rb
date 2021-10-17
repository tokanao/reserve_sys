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

ActiveRecord::Schema.define(version: 0) do

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", comment: "コース名"
    t.integer "price"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "status", default: 0
    t.string "last_name"
    t.string "first_name"
    t.string "last_kana"
    t.string "first_kana"
    t.string "gender"
    t.date "birth"
    t.string "zip1"
    t.string "zip2"
    t.string "addr1"
    t.string "addr2"
    t.string "addr3"
    t.string "tel1"
    t.string "tel2"
    t.string "tel3"
    t.string "email"
    t.text "note", comment: "備考"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "resource_id"
    t.integer "customer_id"
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "term"
    t.integer "price"
    t.text "note"
    t.integer "course_id"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
    t.index ["customer_id"], name: "customer_id_idx"
    t.index ["resource_id"], name: "resource_id_idx"
  end

  create_table "resources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "color", comment: "背景色\nカレンダー表示時"
    t.text "note"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "systems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "entry_unit", default: 1, comment: "予約単位\n1:日単位 2:時間単位"
    t.boolean "member_management_flag", default: false, comment: "会員管理フラグ"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "deleted_at", comment: "削除フラグ"
    t.datetime "created_at", comment: "作成日"
    t.datetime "updated_at", comment: "更新日"
  end

end
