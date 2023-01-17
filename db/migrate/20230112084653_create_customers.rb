class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.numeric :phone_number
      t.string :photo_url
      t.string :location
      t.string :password_digest

      t.timestamps
    end
  end
end
