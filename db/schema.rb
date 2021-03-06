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

ActiveRecord::Schema.define(:version => 20121003155230) do

  create_table "arguments", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "fact_id"
  end

  add_index "arguments", ["fact_id"], :name => "index_arguments_on_fact_id"
  add_index "arguments", ["user_id", "created_at"], :name => "index_arguments_on_user_id_and_created_at"

  create_table "documents", :force => true do |t|
    t.string   "title",      :default => "Sem titulo"
    t.string   "subject"
    t.text     "body"
    t.integer  "user_id"
    t.boolean  "active",     :default => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "documents", ["user_id", "created_at"], :name => "index_documents_on_user_id_and_created_at"

  create_table "facts", :force => true do |t|
    t.text     "content"
    t.text     "problem"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "active",      :default => false
    t.integer  "user_id"
    t.text     "orientation"
    t.datetime "ini_term"
    t.datetime "fin_term"
  end

  create_table "msgs", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "id_receiver"
    t.boolean  "read",        :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "msgs", ["user_id", "created_at"], :name => "index_msgs_on_user_id_and_created_at"

  create_table "pages", :force => true do |t|
    t.string   "key"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pages", ["key"], :name => "index_pages_on_key"

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "sandargs", :force => true do |t|
    t.text     "claim"
    t.text     "ground"
    t.text     "warrant"
    t.text     "backing"
    t.text     "rebuttal"
    t.text     "qualifier"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "overwrite",  :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "sandargs", ["user_id"], :name => "index_sandargs_on_user_id"

  create_table "schemes", :force => true do |t|
    t.string   "name"
    t.text     "form"
    t.text     "cq"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "schemes", ["name"], :name => "index_schemes_on_name"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.boolean  "moderator",       :default => false
    t.boolean  "show_fact",       :default => true
    t.boolean  "show_html",       :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
