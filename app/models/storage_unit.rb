class StorageUnit < ApplicationRecord
    belongs_to :admin
    has_many :customer_storages, dependent: :destroy
    has_many :customers, through: :customer_storages

    validates :rental_rate, inclusion: {in: (500..30000), message: "%{value} is not a valid price"}
end
