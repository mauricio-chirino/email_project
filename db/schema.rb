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

ActiveRecord::Schema[7.2].define(version: 2024_11_10_193453) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.string "file_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_assets_on_company_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "segment_id", null: false
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_campaigns_on_company_id"
    t.index ["segment_id"], name: "index_campaigns_on_segment_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.string "tax_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "job_title"
    t.string "company_name"
    t.string "industry"
    t.string "tax_id"
    t.string "phone"
    t.string "mobile"
    t.string "address"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
  end

  create_table "contacts_segments", id: false, force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.bigint "segment_id", null: false
  end

  create_table "email_templates", force: :cascade do |t|
    t.bigint "campaign_id", null: false
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_email_templates_on_campaign_id"
  end

  create_table "forms", force: :cascade do |t|
    t.bigint "campaign_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_forms_on_campaign_id"
  end

  create_table "segments", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_segments_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assets", "companies"
  add_foreign_key "campaigns", "companies"
  add_foreign_key "campaigns", "segments"
  add_foreign_key "contacts", "companies"
  add_foreign_key "email_templates", "campaigns"
  add_foreign_key "forms", "campaigns"
  add_foreign_key "segments", "companies"
  add_foreign_key "users", "companies"
end
