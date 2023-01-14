class StorageUnit < ApplicationRecord
    belongs_to :admin
    has_many :customer_storages, dependent: :destroy
    has_many :customers, through: :customer_storages
end
