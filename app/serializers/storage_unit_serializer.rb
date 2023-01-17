class StorageUnitSerializer < ActiveModel::Serializer
  attributes :id, :photo_url, :storage_type, :rental_rate, :size, :admin_id, :location, :availability
   belongs_to :admin
   #has_many :delivery_services
end
