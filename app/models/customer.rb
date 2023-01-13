class Customer < ApplicationRecord
    # validates :name, uniqueness: { case_sensitive: false }
    has_secure_password
    has_many :storage_units, dependent: :destroy
    has_many :delivery_services, through: :storage_units

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
