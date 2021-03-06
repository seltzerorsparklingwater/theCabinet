# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_18_112747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.string "link_url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_brands_on_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "brand_id", null: false
    t.string "photo_url"
    t.string "cos_dna_url"
    t.string "product_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.hstore "affiliate_links"
    t.index ["affiliate_links"], name: "index_products_on_affiliate_links", using: :gin
    t.index ["brand_id"], name: "index_products_on_brand_id"
  end

  create_table "routine_products", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.integer "routine_id"
    t.integer "step_id"
    t.index ["product_id"], name: "index_routine_products_on_product_id"
    t.index ["routine_id"], name: "index_routine_products_on_routine_id"
    t.index ["step_id"], name: "index_routine_products_on_step_id"
  end

  create_table "routines", force: :cascade do |t|
    t.integer "author_id", null: false
    t.string "title", null: false
    t.string "shelfie_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_routines_on_author_id"
  end

  create_table "snapshots", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "user_photo_url"
    t.text "commentary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_snapshots_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "routine_id", null: false
    t.integer "step_number_in_routine", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "photo_url"
    t.string "insta_url"
    t.text "bio", null: false
    t.integer "sunscreen_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
