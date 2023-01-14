class CreateCustomerStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_storages do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :storage_unit, null: false, foreign_key: true
      t.integer :count
      t.integer :total_cost
      t.integer :days

      t.timestamps
    end
  end
end
