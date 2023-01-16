class ChangeStartDateAndEndDateToDatetypeInStorageUnit < ActiveRecord::Migration[7.0]
  def change
    change_column :storage_units, :start_date, :date
    change_column :storage_units, :end_date, :date
  end
end
