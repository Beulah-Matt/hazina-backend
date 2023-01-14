class Customer < ApplicationRecord
    # validates :name, uniqueness: { case_sensitive: false }
    has_secure_password
    has_many :customer_storages, dependent: :destroy
    has_many :storage_units, through: :customer_storages
    has_many :delivery_services

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
