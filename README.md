# README
PHASE 5 FINAL PROJECT 
GROUP 1- HAZINA STORAGE SOLUTIONS

Members:
Beulah Mathenge - Scrum Master
Kevin Kweyu - UI/UX designer 
Dennis Gachomo
Yego Kipkemoi
Gilbert Kipkemoi

Front-End Deployment https://hazina-fe.vercel.app
This project is a culmination of all that we have been learning for the past twenty weeks. Our group built a 

* System dependencies
    For this project, you should have bundler and ruby installed and available globally. 

* Configuration
 -To run the project locally, go to our github repo hazina storage backen  and copy either the   SSH or HTTP clink. 
 -Clone the repo to your local environment then run bundle install to install all of the project's dependencies. 
 -Run migrations using rails db:migrate. 
 -The project will be ready to interact with through postman. 

# Database creation

 ``` For this project, we had five database models with several relationships as follows
    <!-- https://i.postimg.cc/MTdvpGdb/database.png →


  The Customer Table
    has_many :customer_storages
    has_many :storage_units, through: :customer_storages
    has_many :delivery_services

 The Storage Unit
  belongs_to :admin
 has_many :customer_storages
has_many :customers, through: :customer_storages  
Only an admin can create a storage unit and render it for customers to book depending on its  availability. 

 The CustomerStorage
  It belongs to both a customer and a storage unit. 
  This Model represents a customer booking a storage unit and is created by the customer who is in session.  

The Admin Table 
An admin has_many storage units.
		They can login and add storage units depending on their availability. 

Delivery services.
Belong_to customer, through booking and requesting for delivery services of their units. 

* Database Initialization and Validations
 All dependent models have working relationships, including dependencies for actions like destroy. 

In addition to that, we have several validations for email uniqueness and presence in the customer and admin models. 

Price ranges from Ksh. 500 to Ksh. 30000 and we are checking for that too. 

Since this project is using Bycrpt for password protection, we have a has_secure_password association for the admin and customers models. 


* How to run the test suite
 We have several seeds in the database and you can get access to them by running-> rails db:seed

* Deployment instructions
This project has been deployed to Railway and is live on this link
Here are our endpoints:
Customer
POST - https://hazina-backend.up.railway.app/login
POST -https://hazina-backend.up.railway.app/signup
GET - https://hazina-backend.up.railway.app/me for customer in session
DELETE -https://hazina-backend.up.railway.app/logout 

Admin
POST - https://hazina-backend.up.railway.app/admin_login
GET - https://hazina-backend.up.railway.app/admin for admin sessions
POST - https://hazina-backend.up.railway.app/admin_signup 

StorageUnit
Index and Show routes https://hazina-backend.up.railway.app/storage_units

     4. CustomerStorage
We can make GET, POST, UPDATE and DELETE requests to https://hazina-backend.up.railway.app/customer_storages

     5. DeliveryService
Index and Show routes https://hazina-backend.up.railway.app/delivery_services
