class DeliveryServiceSerializer < ActiveModel::Serializer
  attributes :id, :availability, :delivery_type, :location, :customer_id, :rate
  belongs_to :customer
  #belongs_to :storage_unit
end
