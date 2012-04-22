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

ActiveRecord::Schema.define(:version => 20120421213712) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["brand_id"], :name => "index_categories_on_brand_id"

  create_table "interfaces", :force => true do |t|
    t.boolean  "updated_device"
    t.boolean  "has_opening"
    t.boolean  "has_closing"
    t.boolean  "has_studies"
    t.boolean  "has_ipp"
    t.boolean  "has_special"
    t.boolean  "has_references"
    t.integer  "brand_id"
    t.integer  "number_of_menus"
    t.boolean  "uses_stack_view"
    t.string   "btn_url"
    t.string   "over_btn_url"
    t.string   "nav_btn_url"
    t.string   "backgrounds_url"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "interfaces", ["brand_id"], :name => "index_interfaces_on_brand_id"

  create_table "pdfs", :force => true do |t|
    t.string   "name"
    t.string   "pdf_type"
    t.integer  "brand_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "url"
  end

  add_index "pdfs", ["brand_id"], :name => "index_pdfs_on_brand_id"

  create_table "slides", :force => true do |t|
    t.string   "name"
    t.integer  "version"
    t.string   "url"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "slides", ["category_id"], :name => "index_slides_on_category_id"

end
