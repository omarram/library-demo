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

ActiveRecord::Schema.define(version: 20150925191248) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.text     "description"
    t.string   "publisher"
    t.date     "published_on"
    t.boolean  "on_loan",            default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "borrowers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loaned_books", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "borrower_id"
    t.datetime "due_date_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "loaned_books", ["book_id", "borrower_id"], name: "index_loaned_books_on_book_id_and_borrower_id"

  create_table "publications", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "publications", ["author_id"], name: "index_publications_on_author_id"
  add_index "publications", ["book_id"], name: "index_publications_on_book_id"

end
