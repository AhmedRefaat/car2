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

ActiveRecord::Schema.define(:version => 20130119211937) do

  create_table "ncars", :force => true do |t|
    t.string   "oem"
    t.string   "model"
    t.string   "transmission"
    t.string   "drive_type"
    t.string   "engine_size"
    t.string   "seat_material"
    t.integer  "performance"
    t.integer  "gearbox"
    t.string   "body_style"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "ocars", :force => true do |t|
    t.string   "oem"
    t.string   "model"
    t.string   "transmission"
    t.string   "drive_type"
    t.string   "engine_size"
    t.string   "seat_material"
    t.integer  "performance"
    t.integer  "gearbox"
    t.string   "body_style"
    t.string   "owner"
    t.string   "telephone"
    t.string   "image_url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "searches", :force => true do |t|
    t.string   "ckind"
    t.string   "cmodel"
    t.integer  "price"
    t.string   "find"
    t.string   "show"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
