class CreateCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :charges do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.integer :status
      t.references :purchase, null: false, foreign_key: true
      t.references :payment_source, null: false, foreign_key: true

      t.timestamps
    end
    add_index :charges, :status
  end
end
