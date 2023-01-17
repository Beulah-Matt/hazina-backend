class DropStartDateAndEndDateFromStorageUnit < ActiveRecord::Migration[7.0]
  def change
    remove_column :storage_units, :start_date, :date
    remove_column :storage_units, :end_date, :date
    add_column :customer_storages, :start_date, :string
    add_column :customer_storages, :end_date, :string
  end
end
