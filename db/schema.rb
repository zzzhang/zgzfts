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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130916095831) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "books", :force => true do |t|
    t.string   "title"
    t.datetime "posttime"
    t.string   "body"
    t.string   "cover"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.decimal  "price"
  end

  add_index "books", ["admin_id"], :name => "index_books_on_admin_id"

  create_table "carts", :force => true do |t|
    t.string   "items"
    t.decimal  "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "distributions", :force => true do |t|
    t.string   "title"
    t.datetime "posttime"
    t.text     "body"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "distributions", ["admin_id"], :name => "index_distributions_on_admin_id"

  create_table "news", :force => true do |t|
    t.string   "title"
    t.datetime "posttime"
    t.text     "body"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "news", ["admin_id"], :name => "index_news_on_admin_id"

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.datetime "posttime"
    t.text     "body"
    t.integer  "admin_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "notices", ["admin_id"], :name => "index_notices_on_admin_id"

  create_table "orders", :force => true do |t|
    t.string   "items"
    t.decimal  "cost"
    t.datetime "ordertime"
    t.integer  "status"
    t.string   "notice"
    t.string   "deliverid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
