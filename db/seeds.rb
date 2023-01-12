# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Customer.destroy_all
StorageUnit.destroy_all
DeliveryService.destroy_all
Admin.destroy_all
customer1 = Customer.create(name: "Yego", email: "yg@gmail", location: "kasarani", phone_number: 123, photo_url: "rttt", password: "fh23", password_confirmation: "fh23")

admin1 = Admin.create(name: "Dennid", email: "d@gmail", password: "fhfg", password_confirmation: "fhfg" )
storage_unit1 = StorageUnit.create(customer_id: customer1.id, admin_id: admin1.id, storage_type: "perishable", rental_rate: 2300, size: "small", availability: "true",
    start_date: 12, end_date: 15, location: "Nairobi")
delivery_services1 = DeliveryService.create(customer_id: customer1.id, availability: "true", storage_unit_id: storage_unit1.id, delivery_type: "track", location: "Nairobi", rate: 2000)
