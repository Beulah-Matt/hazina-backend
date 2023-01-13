class Admin < ApplicationRecord
    has_secure_password
    has_many :storage_units, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
