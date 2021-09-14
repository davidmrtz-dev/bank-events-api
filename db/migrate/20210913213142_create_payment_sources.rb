class CreatePaymentSources < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_sources do |t|
      t.integer :source
      t.datetime :statement_date, precision: 6, null: false
      t.references :billing_information, null: false, foreign_key: true

      t.timestamps
    end
    add_index :payment_sources, %i[source statement_date]
  end
end
