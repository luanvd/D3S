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

ActiveRecord::Schema.define(version: 20190121103832) do

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "facilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "language"
    t.string "left_text_1"
    t.string "left_text_2"
    t.text "right_text_1"
    t.text "right_text_2"
    t.text "right_text_3"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_facility_languages_on_facility_id"
  end

  create_table "module_theme_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "language"
    t.string "img_about"
    t.string "img_enga"
    t.string "img_enga_producter"
    t.string "img_origine"
    t.string "img_product"
    t.string "img_producter"
    t.string "img_facility"
    t.string "img_contact"
    t.bigint "module_theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["module_theme_id"], name: "index_module_theme_languages_on_module_theme_id"
  end

  create_table "module_themes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
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

  create_table "popup_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "popup_id"
    t.integer "language", default: 0
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["popup_id"], name: "index_popup_translations_on_popup_id"
  end

  create_table "popups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producer_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "producer_id"
    t.integer "language", default: 0
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producer_id"], name: "index_producer_translations_on_producer_id"
  end

  create_table "producers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.integer "language"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_translations_on_product_id"
  end

  create_table "producter_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "language"
    t.string "left_text_1"
    t.string "left_text_2"
    t.text "right_text_1"
    t.text "right_text_2"
    t.text "right_text_3"
    t.bigint "producter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producter_id"], name: "index_producter_languages_on_producter_id"
  end

  create_table "producters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "slider_show_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "slider_show_id"
    t.integer "language", default: 0
    t.string "title_1"
    t.string "title_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slider_show_id"], name: "index_slider_show_translations_on_slider_show_id"
  end

  create_table "slider_shows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_image_1"
    t.string "title_image_2"
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
  add_foreign_key "facility_languages", "facilities"
  add_foreign_key "module_theme_languages", "module_themes"
  add_foreign_key "origine_languages", "origines"
  add_foreign_key "producter_languages", "producters"
end
