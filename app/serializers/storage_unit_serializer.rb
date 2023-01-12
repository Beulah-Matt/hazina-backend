class StorageUnitSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :storage_type, :rental_rate, :size, :admin_id, :start_date, :end_date, :location
end
