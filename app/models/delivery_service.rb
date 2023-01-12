class DeliveryService < ApplicationRecord
    belongs_to :customer
    belongs_to :storage_unit
end
