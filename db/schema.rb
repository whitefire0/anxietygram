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

ActiveRecord::Schema.define(version: 2018_07_02_124010) do

  create_table "authie_sessions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "token"
    t.string "browser_id"
    t.integer "user_id"
    t.boolean "active", default: true
    t.text "data"
    t.datetime "expires_at"
    t.datetime "login_at"
    t.string "login_ip"
    t.datetime "last_activity_at"
    t.string "last_activity_ip"
    t.string "last_activity_path"
    t.string "user_agent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "user_type"
    t.integer "parent_id"
    t.datetime "two_factored_at"
    t.string "two_factored_ip"
    t.integer "requests", default: 0
    t.datetime "password_seen_at"
    t.string "token_hash"
    t.string "host"
    t.index ["browser_id"], name: "index_authie_sessions_on_browser_id", length: 10
    t.index ["token"], name: "index_authie_sessions_on_token", length: 10
    t.index ["token_hash"], name: "index_authie_sessions_on_token_hash", length: 10
    t.index ["user_id"], name: "index_authie_sessions_on_user_id"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_comments_on_image_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "hashtags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tagname"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_hashtags_on_image_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "graphic_file_name"
    t.string "graphic_content_type"
    t.integer "graphic_file_size"
    t.datetime "graphic_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "image_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_likes_on_image_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "images"
  add_foreign_key "comments", "users"
  add_foreign_key "hashtags", "images"
  add_foreign_key "images", "users"
  add_foreign_key "likes", "images"
  add_foreign_key "likes", "users"
end
