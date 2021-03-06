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

ActiveRecord::Schema.define(version: 2020_01_19_132259) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_kanji", null: false
    t.string "name_kana", null: false
    t.integer "postal_cord", null: false
    t.string "prefectures", null: false
    t.string "municipalities", null: false
    t.integer "house_number", null: false
    t.string "building_name", null: false
    t.integer "phone_number", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "card_number", null: false
    t.string "expiration_date", null: false
    t.integer "securitycord", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "product_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "value", null: false
    t.string "name", null: false
    t.integer "product_explanation"
    t.integer "category", null: false
    t.string "producut_situation"
    t.integer "postage_burden", null: false
    t.integer "shipping_origin", null: false
    t.integer "arrival_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand"
    t.integer "saler_id"
    t.integer "buyer_id"
    t.string "product_size"
    t.string "shipping_method"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "birthday", null: false
    t.integer "phone_number", null: false
    t.integer "image"
    t.integer "introduction"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "famliy_name_kanji"
    t.string "famliy_name_kana"
    t.string "first_name_name_kanji"
    t.string "first_name_name_kana"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
end
