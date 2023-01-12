class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :phone_number, :photo_url, :location
end
