class ChangeDataTypeForPasswordDigestFromAdmin < ActiveRecord::Migration[7.0]
  def change
    change_column :admins, :password_digest, :string
  end
end
