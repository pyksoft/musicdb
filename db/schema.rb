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

ActiveRecord::Schema.define(version: 20161112112356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artistphotos", force: :cascade do |t|
    t.integer  "artist_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artistphotos_on_artist_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_genres", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "genre_id"
    t.index ["artist_id"], name: "index_artists_genres_on_artist_id", using: :btree
    t.index ["genre_id"], name: "index_artists_genres_on_genre_id", using: :btree
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chat_rooms_on_user_id", using: :btree
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "favorited_type"
    t.integer  "favorited_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "chat_room_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_photos_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "bio"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  end

  create_table "telegram_users", force: :cascade do |t|
    t.integer  "telegram_id"
    t.string   "first_name"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["telegram_id"], name: "index_telegram_users_on_telegram_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_artists", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "artists_id"
    t.index ["artists_id"], name: "index_users_artists_on_artists_id", using: :btree
    t.index ["user_id"], name: "index_users_artists_on_user_id", using: :btree
  end

  add_foreign_key "artistphotos", "artists"
  add_foreign_key "chat_rooms", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "photos", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "songs", "artists"
end
