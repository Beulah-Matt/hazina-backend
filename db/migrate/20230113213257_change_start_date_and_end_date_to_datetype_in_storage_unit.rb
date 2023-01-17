class ChangeStartDateAndEndDateToDatetypeInStorageUnit < ActiveRecord::Migration[7.0]
  def change
    change_column :storage_units, :start_date, :string
    change_column :storage_units, :end_date, :string
  end
end
