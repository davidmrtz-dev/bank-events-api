class CreatePaymentSources < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_sources do |t|
      t.integer :type
      t.date :statement_date
      t.references :billing_information, null: false, foreign_key: true

      t.timestamps
    end
    add_index :payment_sources, %i[type statement_date]
  end
end
