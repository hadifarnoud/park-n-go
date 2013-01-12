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

ActiveRecord::Schema.define(:version => 20130112044004) do

  create_table "bookings", :force => true do |t|
    t.integer  "transaction_id"
    t.integer  "car_id"
    t.datetime "drop_off"
    t.datetime "pick_up"
    t.string   "flight_inbound"
    t.string   "flight_outbound"
    t.string   "where_i_parked"
    t.integer  "feedback_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "cars", :force => true do |t|
    t.integer  "user_id"
    t.string   "car_make"
    t.string   "car_model"
    t.string   "car_colour"
    t.integer  "car_year"
    t.integer  "car_milage"
    t.string   "car_picture"
    t.date     "car_last_state_report"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "comment"
    t.integer  "raiting"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parking_branches", :force => true do |t|
    t.integer  "parking_company_id"
    t.string   "telephone"
    t.string   "email"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "parking_id"
    t.integer  "service_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "country"
    t.string   "airport"
    t.string   "branch_name"
  end

  create_table "parking_companies", :force => true do |t|
    t.string   "email"
    t.string   "website"
    t.string   "telephone"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "company_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "country"
  end

  create_table "parking_parking_branches", :id => false, :force => true do |t|
    t.integer "branch_id"
    t.integer "parking_id"
  end

  add_index "parking_parking_branches", ["branch_id"], :name => "index_parking_parking_branches_on_branch_id"
  add_index "parking_parking_branches", ["parking_id"], :name => "index_parking_parking_branches_on_parking_id"

  create_table "parking_types", :force => true do |t|
    t.string   "parking_type_name"
    t.string   "parking_type_description"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "parkings", :force => true do |t|
    t.integer  "parking_type_id"
    t.integer  "price_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "picture_path"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "prices", :force => true do |t|
    t.integer  "price_id"
    t.decimal  "price_amount"
    t.string   "price_currency"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "services", :force => true do |t|
    t.integer  "service_id"
    t.string   "service_name"
    t.integer  "price_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "transaction_id"
    t.integer  "user_id"
    t.integer  "parking_id"
    t.integer  "service_id"
    t.integer  "branch_id"
    t.string   "device"
    t.string   "currency"
    t.integer  "point"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
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
    t.integer  "picture_id"
    t.string   "vat_number"
    t.string   "telephone"
    t.string   "mobile"
    t.integer  "booking_id"
    t.integer  "address_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
