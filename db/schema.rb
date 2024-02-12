ActiveRecord::Schema[7.1].define(version: 2024_01_24_105244) do
  create_table "expenses", force: :cascade do |t|
    t.integer "personnel_id"
    t.decimal "amount"
    t.string "item"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personnels", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
