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

ActiveRecord::Schema.define(version: 20190105080811) do

  create_table "d3s_information_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "d3s_information_id"
    t.string "language"
    t.string "title_1"
    t.text "des_1"
    t.string "title_2"
    t.text "des_2"
    t.text "des_middle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["d3s_information_id"], name: "index_d3s_information_languages_on_d3s_information_id"
  end

  create_table "d3s_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image_1"
    t.string "image_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engagement_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "engagement_id"
    t.integer "language", default: 0
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engagement_id"], name: "index_engagement_translations_on_engagement_id"
  end

  create_table "engagements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origine_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "language"
    t.string "left_text_1"
    t.string "left_text_2"
    t.string "left_text_3"
    t.string "right_title_1"
    t.string "right_title_2"
    t.string "right_title_3"
    t.string "right_des_1"
    t.string "right_des_2"
    t.string "right_des_3"
    t.bigint "origine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origine_id"], name: "index_origine_languages_on_origine_id"
  end

  create_table "origines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slider_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "slider_show_id"
    t.integer "sort_index"
    t.string "caption"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slider_show_id"], name: "index_slider_images_on_slider_show_id"
  end

  create_table "slider_shows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_image"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_avatar"
    t.integer "role"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "d3s_information_languages", "d3s_informations"
  add_foreign_key "origine_languages", "origines"
end
