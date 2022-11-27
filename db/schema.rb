# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_127_035_013) do
  create_table 'account_login_change_keys', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'login', null: false
    t.datetime 'deadline', null: false
  end

  create_table 'account_password_reset_keys', force: :cascade do |t|
    t.string 'key', null: false
    t.datetime 'deadline', null: false
    t.datetime 'email_last_sent', default: -> { 'CURRENT_TIMESTAMP' }, null: false
  end

  create_table 'account_remember_keys', force: :cascade do |t|
    t.string 'key', null: false
    t.datetime 'deadline', null: false
  end

  create_table 'account_verification_keys', force: :cascade do |t|
    t.string 'key', null: false
    t.datetime 'requested_at', default: -> { 'CURRENT_TIMESTAMP' }, null: false
    t.datetime 'email_last_sent', default: -> { 'CURRENT_TIMESTAMP' }, null: false
  end

  create_table 'accounts', force: :cascade do |t|
    t.integer 'status', default: 1, null: false
    t.string 'email', null: false
    t.string 'password_hash'
    t.index ['email'], name: 'index_accounts_on_email', unique: true, where: 'status IN (1, 2)'
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'address', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'sub_option_id'
    t.index ['sub_option_id'], name: 'index_companies_on_sub_option_id'
  end

  create_table 'plans', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'caption', default: 'needs description', null: false
    t.boolean 'api_client', default: false, null: false
    t.integer 'max_paper_upload_count', default: 5, null: false
    t.boolean 'max_paper_upload_count_unlimited', default: false, null: false
    t.bigint 'master_plan_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'sub_options', force: :cascade do |t|
    t.string 'option_type', null: false
    t.integer 'quantity', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'account_login_change_keys', 'accounts', column: 'id'
  add_foreign_key 'account_password_reset_keys', 'accounts', column: 'id'
  add_foreign_key 'account_remember_keys', 'accounts', column: 'id'
  add_foreign_key 'account_verification_keys', 'accounts', column: 'id'
  add_foreign_key 'companies', 'sub_options'
end
