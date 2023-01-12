class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :phone_number, :photo_url, :location, :name
  has_many :storage_units
  # has_many :delivery_services, through: :storage_units
end
