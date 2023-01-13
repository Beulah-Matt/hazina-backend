class AddPhotoToStorageUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :storage_units, :photo_url, :string
  end
end
