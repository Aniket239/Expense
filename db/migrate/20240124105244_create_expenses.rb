class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.integer :personnel_id
      t.decimal :amount
      t.string :item
      t.text :remarks

      t.timestamps
    end
  end
end
