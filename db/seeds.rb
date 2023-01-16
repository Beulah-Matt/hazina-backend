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

puts "seeding customers"
customer1 = Customer.create(name: "Yego", email: "yego@gmail", location: "kasarani", phone_number: 790567345, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594726289384-M7LBW1LOOVGF287P03Z8/char_17-01.jpg?format=300w", password: "fh23", password_confirmation: "fh23")
customer2 = Customer.create(name: "Kelvin", email: "kelvin@gmail", location: "Rongai", phone_number: +2457056390, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594725893138-S18LM3I9UW75FH97ZA64/char_7-01.jpg?format=300w", password: "fh23", password_confirmation: "fh23")
customer3 = Customer.create(name: "Dennis", email: "denis@gmail", location: "kasarani", phone_number: 7673345768, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594726608657-J4S71OYNLJ59NHCMXF4U/char_23-01.jpg?format=300w", password: "xysd", password_confirmation: "xysd")
customer4 = Customer.create(name: "Beulah", email: "beulah@gmail", location: "Thika", phone_number: 789734123, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594727098672-XJQOTZ1CYPBT63389M44/char_35-01.jpg?format=300w", password: "wrsd", password_confirmation: "wrsd")
customer5 = Customer.create(name: "Robert", email: "roba@gmail", location: "Juja", phone_number: 754236780, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594725915563-T8RQ7QD2K7DWW2MDPFP8/char_8-01.jpg?format=300w", password: "123we", password_confirmation: "123we")
customer6 = Customer.create(name: "London", email: "london@gmail.com", password: "london123", phone_number: 789987654, photo_url: "https://images.squarespace-cdn.com/content/v1/5e0f21b80d7a60259e9a7f32/1594726056343-PWN73FZTHEP4YUZHEQ2R/char_15-01.jpg?format=500w", location: "Langata")


puts "seeding admins"
admin1 = Admin.create(name: "Dennis", email: "d@gmail.com", password: "fhfg", password_confirmation: "fhfg" )
admin2 = Admin.create(name: "Sue", email: "sue@gmail.com", password: "89uix", password_confirmation: "98uix" )
admin3 = Admin.create(name: "ken", email: "ken@gmail.com", password: "mnot", password_confirmation: "mnot" )

##Storage Units
puts "seeding storage..."

##Cold Rooms

storage_unit1 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 1000, size: "small", availability: "true",

    photo_url: "https://plus.unsplash.com/premium_photo-1663047375014-7a59b88c6f37?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29sZCUyMHN0b3JhZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", location: "Westlands")

storage_unit2 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 2300, size: "Medium", availability: "true",

    photo_url: "https://plus.unsplash.com/premium_photo-1663047788002-765d78050d53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNvbGQlMjBzdG9yYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", location: "Westlands")

storage_unit3 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 5000, size: "Large", availability: "true",

    photo_url: "https://plus.unsplash.com/premium_photo-1661810936710-e2c78f55c7cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGNvbGQlMjBzdG9yYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")

storage_unit4 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 24000, size: "Warehouse", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1622030411594-c282a63aa1bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHdhcmVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")

storage_unit5 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 1000, size: "small", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1606040879707-0629f60767aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bG9ja2Vyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Nyali")

storage_unit6 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 2300, size: "Medium", availability: "true",

    photo_url: "https://plus.unsplash.com/premium_photo-1663047788002-765d78050d53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNvbGQlMjBzdG9yYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", location: "Nyali")

storage_unit7 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 5000, size: "Large", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1586528116493-a029325540fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHdhcmVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Nyali")

storage_unit8 = StorageUnit.create(admin_id: admin1.id, storage_type: "Cold Room", rental_rate: 24000, size: "Warehouse", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1557761469-f29c6e201784?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHdhcmVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Nyali")

## General Units Seeds 
storage_unit9 = StorageUnit.create(admin_id: admin1.id, storage_type: "General Storage", rental_rate: 1000, size: "small", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1504275107627-0c2ba7a43dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9ja2Vyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Nyali")

storage_unit10 = StorageUnit.create(admin_id: admin1.id, storage_type: "General Storage", rental_rate: 2300, size: "Medium", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1532635042-a6f6ad4745f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHdhcmVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Nyali")

storage_unit12 = StorageUnit.create(admin_id: admin1.id, storage_type: "General Storage", rental_rate: 5000, size: "Large", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1629810226180-5d31f306f717?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGxvY2tlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", location: "Nyali")

storage_unit11 = StorageUnit.create(admin_id: admin1.id, storage_type: "General Storage", rental_rate: 24000, size: "Warehouse", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1609984354032-8ad3b2c3e0d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxvY2tlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", location: "Nyali")


storage_unit13 = StorageUnit.create(admin_id: admin1.id, storage_type: "General Storage", rental_rate: 1000, size: "Small", availability: "true",
 photo_url: "https://images.unsplash.com/photo-1638780506095-3d61a4f0edd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHN0b3JhZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", location: "Westlands")

storage_unit14 = StorageUnit.create( admin_id: admin1.id, storage_type: "General Storage", rental_rate: 2300, size: "Medium", availability: "true",

    photo_url: "ttps://images.unsplash.com/photo-1606040879707-0629f60767aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bG9ja2Vyc3xlbnwwfHwwfhHw%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")

storage_unit15 = StorageUnit.create( admin_id: admin1.id, storage_type: "General Storage", rental_rate: 5000, size: "Large", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1551313158-73d016a829ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3RvcmFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")

storage_unit16 = StorageUnit.create( admin_id: admin1.id, storage_type: "General Storage", rental_rate: 24000, size: "Warehouse", availability: "true",

    photo_url: "https://images.unsplash.com/photo-1624008915317-cb3ad69b16ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3RvcmFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")


delivery_services1 = DeliveryService.create(customer_id: customer1.id, availability: "true", storage_unit_id: storage_unit1.id, delivery_type: "track", location: "Nairobi", rate: 2000)
