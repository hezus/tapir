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

ActiveRecord::Schema.define(:version => 20120125012719) do

  create_table "authentications", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examples", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_infos", :force => true do |t|
    t.text     "content"
    t.string   "info_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "known_issues", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "known_issues_rest_resources", :id => false, :force => true do |t|
    t.integer  "known_issue_id"
    t.integer  "rest_resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "known_issues_steps", :id => false, :force => true do |t|
    t.integer  "known_issue_id"
    t.integer  "step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "rest_datatypes", :force => true do |t|
    t.string "name"
    t.string "example"
    t.string "format"
    t.text   "description"
  end

  create_table "rest_objects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rest_param_examples", :force => true do |t|
    t.string  "example"
    t.integer "rest_resource_param_id"
  end

  create_table "rest_resource_params", :force => true do |t|
    t.text     "name"
    t.boolean  "optional"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rest_resource_params_rest_resources", :id => false, :force => true do |t|
    t.integer  "rest_resource_param_id"
    t.integer  "rest_resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rest_resources", :force => true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "rest_object_id"
    t.string   "html_method"
    t.boolean  "show_data_types"
    t.boolean  "has_params"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "request"
    t.text     "response_xml"
    t.text     "response_json"
    t.text     "request_payload"
  end

  create_table "rest_resources_steps", :id => false, :force => true do |t|
    t.integer  "rest_resource_id"
    t.integer  "step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", :force => true do |t|
    t.string   "title"
    t.integer  "index"
    t.text     "content"
    t.integer  "authentication_id"
    t.integer  "example_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
