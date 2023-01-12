class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest 
  has_many :storage_units
end
