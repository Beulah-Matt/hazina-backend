class CreateStorageUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_units do |t|
      t.string :storage_type
      t.boolean :availability
      t.integer :rental_rate
      t.string :size
      t.integer :admin_id
      t.integer :customer_id
      t.integer :start_date
      t.integer :end_date

      t.timestamps
    end
  end
end
