class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""

      t.timestamps null: false
    end
    add_index :customers, :email, unique: true
  end
end
