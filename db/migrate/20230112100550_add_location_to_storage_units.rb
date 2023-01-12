class AddLocationToStorageUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :storage_units, :location, :string
  end
end
