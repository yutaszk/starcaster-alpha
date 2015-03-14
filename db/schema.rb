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

ActiveRecord::Schema.define(version: 20150314215051) do

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "tweet_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "media", force: :cascade do |t|
    t.integer  "tweet_id",   limit: 4
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "timelines", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "tweet_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "post_id",    limit: 255
    t.string   "text",       limit: 255
    t.string   "user_name",  limit: 255
    t.string   "user_sid",   limit: 255
    t.string   "user_uid",   limit: 255
    t.string   "user_image", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "tweeted_at"
  end

  create_table "urls", force: :cascade do |t|
    t.integer  "tweet_id",   limit: 4
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "tw_name",    limit: 255
    t.string   "tw_sid",     limit: 255
    t.string   "tw_uid",     limit: 255
    t.string   "tw_key",     limit: 255
    t.string   "tw_secret",  limit: 255
    t.string   "provider",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image",      limit: 255
    t.string   "preset_tl",  limit: 255
    t.string   "preset_fav", limit: 255
    t.string   "h_id",       limit: 255
    t.string   "h_key",      limit: 255
    t.string   "h_secret",   limit: 255
    t.string   "p_id",       limit: 255
    t.string   "p_key",      limit: 255
    t.string   "q_id",       limit: 255
    t.string   "q_key",      limit: 255
    t.string   "q_secret",   limit: 255
  end

end
