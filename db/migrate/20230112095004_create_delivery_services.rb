class CreateDeliveryServices < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_services do |t|
      t.boolean :availability
      t.string :location
      t.integer :rate
      t.string :delivery_type
      t.integer :customer_id
      t.integer :storage_unit_id

      t.timestamps
    end
  end
end
