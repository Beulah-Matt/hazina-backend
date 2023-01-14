class CustomerStorageSerializer < ActiveModel::Serializer
  attributes :id, :count, :total_cost, :days, :start_date, :end_date
  belongs_to :customer
  belongs_to :storage_unit
end
