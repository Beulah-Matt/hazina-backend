class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :phone_number, :photo_url, :location, :name
  has_many :storage_units
  # has_many :delivery_services, through: :storage_units
end
