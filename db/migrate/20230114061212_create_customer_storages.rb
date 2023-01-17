class CreateCustomerStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_storages do |t|
      t.integer :customer_id
      t.integer :storage_unit_id
      t.integer :count
      t.integer :total_cost
      t.integer :days

      t.timestamps
    end
  end
end
