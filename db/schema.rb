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

ActiveRecord::Schema.define(version: 20140912020350) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.date     "published_at"
    t.integer  "author_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "books_tags", id: false, force: true do |t|
    t.integer "book_id", null: false
    t.integer "tag_id",  null: false
  end

  add_index "books_tags", ["book_id", "tag_id"], name: "index_books_tags_on_book_id_and_tag_id"
  add_index "books_tags", ["tag_id", "book_id"], name: "index_books_tags_on_tag_id_and_book_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
