class RemoveCustomerIdFromStorageUnit < ActiveRecord::Migration[7.0]
  def change
    remove_column :storage_units, :customer_id, :integer
  end
end
