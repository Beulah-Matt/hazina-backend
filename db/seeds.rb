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


customer1 = Customer.create(name: "Yego", email: "yego@gmail", location: "kasarani", phone_number: 790567345, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594726289384-M7LBW1LOOVGF287P03Z8/char_17-01.jpg?format=300w", password: "fh23", password_confirmation: "fh23")
customer2 = Customer.create(name: "Kelvin", email: "kelvin@gmail", location: "Rongai", phone_number: +2457056390, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594725893138-S18LM3I9UW75FH97ZA64/char_7-01.jpg?format=300w", password: "fh23", password_confirmation: "fh23")
customer3 = Customer.create(name: "Dennis", email: "denid@gmail", location: "kasarani", phone_number: 7673345768, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594726608657-J4S71OYNLJ59NHCMXF4U/char_23-01.jpg?format=300w", password: "xysd", password_confirmation: "xysd")
customer4 = Customer.create(name: "Beula", email: "beula@gmail", location: "Thika", phone_number: 789734123, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594727098672-XJQOTZ1CYPBT63389M44/char_35-01.jpg?format=300w", password: "wrsd", password_confirmation: "wrsd")
customer5 = Customer.create(name: "Robert", email: "roba@gmail", location: "Juja", phone_number: 754236780, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594725915563-T8RQ7QD2K7DWW2MDPFP8/char_8-01.jpg?format=300w", password: "123we", password_confirmation: "123we")



admin1 = Admin.create(name: "Dennid", email: "d@gmail.com", password: "fhfg", password_confirmation: "fhfg" )
admin2 = Admin.create(name: "Sue", email: "sue@gmail.com", password: "89uix", password_confirmation: "98uix" )
admin3 = Admin.create(name: "ken", email: "ken@gmail.com", password: "mnot", password_confirmation: "mnot" )




storage_unit1 = StorageUnit.create(customer_id: customer1.id, admin_id: admin1.id, storage_type: "perishable", rental_rate: 2300, size: "small", availability: "true",
    start_date: 12, end_date: 15, location: "Nairobi")




delivery_services1 = DeliveryService.create(customer_id: customer1.id, availability: "true", storage_unit_id: storage_unit1.id, delivery_type: "track", location: "Nairobi", rate: 2000)
