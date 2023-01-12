class Customer < ApplicationRecord
    # validates :name, uniqueness: { case_sensitive: false }
    has_secure_password
    has_many :storage_units
    has_many :delivery_services, through: :storage_units
end
