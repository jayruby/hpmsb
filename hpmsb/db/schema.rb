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

ActiveRecord::Schema.define(version: 20140616024510) do

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "achievements", force: true do |t|
    t.string   "achievement"
    t.text     "organizer"
    t.string   "champ"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "agendas", force: true do |t|
    t.string   "agenda_id"
    t.date     "date"
    t.text     "event"
    t.text     "venue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alumnis", force: true do |t|
    t.string   "alumni_id",           limit: 10
    t.string   "full_name",           limit: 50
    t.string   "place_of_birth",      limit: 20
    t.date     "birthday"
    t.text     "ksb_address"
    t.string   "sub_district",        limit: 12
    t.text     "address"
    t.string   "gender"
    t.string   "email",               limit: 40
    t.string   "phone",               limit: 12
    t.string   "pin_bb",              limit: 8
    t.string   "college",             limit: 50
    t.string   "major"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "comments", force: true do |t|
    t.string   "author"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "division_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "Division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "division_categories", ["Division_id"], name: "index_division_categories_on_Division_id", using: :btree

  create_table "divisions", force: true do |t|
    t.string   "division_id"
    t.string   "program",     limit: 50
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "cost",                   precision: 10, scale: 0
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elder_members", force: true do |t|
    t.string   "elder_member_id"
    t.string   "name"
    t.string   "place_of_birth"
    t.date     "birthday"
    t.text     "ksb_address"
    t.string   "sub_district"
    t.text     "jogja_address"
    t.text     "profession"
    t.text     "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "avatar"
  end

  create_table "galleries", force: true do |t|
    t.string   "title",       limit: 20
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "guests", force: true do |t|
    t.string   "number"
    t.string   "guest_id"
    t.string   "full_name"
    t.text     "address"
    t.date     "cek_in"
    t.date     "cek_out"
    t.text     "necessary"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: true do |t|
    t.string   "title"
    t.text     "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.string   "inventory_id"
    t.string   "name"
    t.string   "number"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journals", force: true do |t|
    t.string   "issn"
    t.string   "volume"
    t.string   "title"
    t.text     "authors"
    t.text     "abstract"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "member_users", ["email"], name: "index_member_users_on_email", unique: true, using: :btree
  add_index "member_users", ["reset_password_token"], name: "index_member_users_on_reset_password_token", unique: true, using: :btree

  create_table "members", force: true do |t|
    t.string   "member_id"
    t.string   "full_name"
    t.string   "place_of_birth"
    t.date     "birthday"
    t.text     "ksb_address"
    t.string   "sub_district"
    t.text     "jogja_address"
    t.string   "gender"
    t.string   "phone"
    t.string   "pin_bb"
    t.string   "college"
    t.string   "major"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "post_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "Post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_categories", ["Post_id"], name: "index_post_categories_on_Post_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "profile_id"
    t.string   "title"
    t.text     "address"
    t.text     "vision"
    t.text     "mission"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
