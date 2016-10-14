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

ActiveRecord::Schema.define(version: 20161009084010) do

  create_table "direct_messages", force: :cascade do |t|
    t.integer  "user_id",          limit: 4,     null: false
    t.integer  "received_user_id", limit: 4,     null: false
    t.text     "message",          limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,     null: false
    t.integer  "video_id",   limit: 4,     null: false
    t.integer  "evaluation", limit: 8,     null: false
    t.text     "comment",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "payment_accounts", force: :cascade do |t|
    t.integer  "user_id",        limit: 4,   null: false
    t.string   "bank_name",      limit: 255
    t.integer  "branch_num",     limit: 4
    t.integer  "account_num",    limit: 4
    t.string   "account_type",   limit: 255
    t.string   "account_holder", limit: 255
    t.string   "customer_id",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "payment_accounts", ["user_id"], name: "index_payment_accounts_on_user_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "video_id",   limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "user_id",        limit: 4,                     null: false
    t.integer  "video_id",       limit: 4,                     null: false
    t.text     "content",        limit: 65535
    t.boolean  "reply_existing",               default: false, null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "user_id",     limit: 4,                 null: false
    t.integer  "question_id", limit: 4,                 null: false
    t.text     "content",     limit: 65535
    t.integer  "reply_count", limit: 4,     default: 0, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer  "user_id",         limit: 4,                 null: false
    t.integer  "in_or_out",       limit: 1, default: 0,     null: false
    t.integer  "sum",             limit: 4,                 null: false
    t.boolean  "finished_or_not",           default: false, null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255,              null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.integer  "point",                  limit: 4,   default: 0,  null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "uid",                    limit: 255
    t.string   "provider",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.integer  "user_id",        limit: 4,                 null: false
    t.string   "file",           limit: 255,               null: false
    t.string   "title",          limit: 255,               null: false
    t.text     "description",    limit: 65535
    t.integer  "purchase_count", limit: 4,     default: 0, null: false
    t.string   "passcoad",       limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
