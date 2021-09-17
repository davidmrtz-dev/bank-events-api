class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :api_version
      t.string :trigger, null: false, default: ""
      t.references :eventable, polymorphic: true

      t.timestamps
    end
    add_index :events, %i[api_version trigger]
    add_index :events, :trigger
  end
end
