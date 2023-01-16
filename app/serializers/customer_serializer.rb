class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :photo_url, :location
  has_many :customer_storages
  has_many :delivery_services
end
