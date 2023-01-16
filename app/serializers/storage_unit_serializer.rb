class StorageUnitSerializer < ActiveModel::Serializer
  attributes :id, :storage_type, :rental_rate, :size, :admin_id, :location, :availability
   belongs_to :admin
   #has_many :delivery_services
end
