class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :storage_units
end
