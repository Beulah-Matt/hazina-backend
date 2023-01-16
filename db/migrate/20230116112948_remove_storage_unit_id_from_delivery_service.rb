class RemoveStorageUnitIdFromDeliveryService < ActiveRecord::Migration[7.0]
  def change
    remove_column :delivery_services, :storage_unit_id
  end
end
