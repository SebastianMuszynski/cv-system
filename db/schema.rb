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

ActiveRecord::Schema.define(version: 20150224172348) do

  create_table "cvs", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "personal_statement"
    t.string   "skills"
    t.string   "qualifications"
    t.string   "references"
    t.boolean  "with_photo"
    t.string   "experience"
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cvs", ["job_id"], name: "index_cvs_on_job_id"
  add_index "cvs", ["user_id"], name: "index_cvs_on_user_id"

  create_table "feedbacks", force: true do |t|
    t.string   "status"
    t.string   "personal_details"
    t.string   "personal_statement"
    t.string   "skills"
    t.string   "qualifications"
    t.string   "references"
    t.string   "experience"
    t.string   "other_comments"
    t.integer  "staff_member_id"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["cv_id"], name: "index_feedbacks_on_cv_id"
  add_index "feedbacks", ["staff_member_id"], name: "index_feedbacks_on_staff_member_id"

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "logo"
    t.date     "deadline"
    t.string   "category"
    t.decimal  "salary",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_members", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
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

  add_index "staff_members", ["email"], name: "index_staff_members_on_email", unique: true
  add_index "staff_members", ["reset_password_token"], name: "index_staff_members_on_reset_password_token", unique: true

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
