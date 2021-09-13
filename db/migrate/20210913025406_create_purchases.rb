class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.integer :payments
      t.decimal :fees, precision: 5, scale: 3, null: false

      t.timestamps
    end
    add_index :purchases, %i[name amount]
    add_reference :purchases, :customer, null: false, foreign_key: true
  end
end
