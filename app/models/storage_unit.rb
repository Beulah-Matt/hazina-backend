class StorageUnit < ApplicationRecord
    belongs_to :customer
    belongs_to :admin
    has_many :delivery_services, dependent: :destroy
end
