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

ActiveRecord::Schema.define(version: 20180505181505) do

  create_table "arts", force: :cascade do |t|
    t.string   "piece"
    t.string   "craft"
    t.string   "painting"
    t.string   "design"
    t.string   "photography"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "loco"
    t.string   "thriller"
    t.string   "SF"
    t.string   "comedy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string   "kpop"
    t.string   "hiphop"
    t.string   "jazz"
    t.string   "classic"
    t.string   "ballade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "name"
    t.text     "route1"
    t.text     "route1_1"
    t.text     "route1_2"
    t.text     "route1_3"
    t.text     "route1_4"
    t.text     "route2"
    t.text     "route2_1"
    t.text     "route2_2"
    t.text     "route2_3"
    t.text     "route2_4"
    t.text     "route2_5"
    t.text     "route3"
    t.text     "route3_1"
    t.text     "route3_2"
    t.text     "route3_3"
    t.text     "route3_4"
    t.text     "route4"
    t.text     "route4_1"
    t.text     "route4_2"
    t.text     "route4_3"
    t.text     "route4_4"
    t.text     "route4_5"
    t.text     "route5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string   "running"
    t.string   "baseBall"
    t.string   "soccer"
    t.string   "skate"
    t.string   "swimming"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travelhows", force: :cascade do |t|
    t.string   "walk"
    t.string   "notwalk"
    t.string   "see"
    t.string   "eat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.float    "rating"
    t.string   "location"
    t.string   "workplace"
    t.string   "movie"
    t.string   "sports"
    t.string   "music"
    t.string   "art"
    t.string   "travelhow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
