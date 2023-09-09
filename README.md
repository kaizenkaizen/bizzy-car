# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ensure that you have Ruby version 3.2.2. Verify this by running ```ruby --version``` in terminal

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* APIs are hosted at localhost:3000
* The following routes are available

| Description       | URI Pattern | Controller#Action | 
| ----------- | ----------- | ----------- |
| Get all customers      | GET    /customers(.:format)       | customers#index |
| create a customer    | POST   /customers(.:format)         | customers#create |
| Get a customer by ID     | GET    /customers/:id(.:format)        | customers#show|
| Get all vehicles      | GET    /vehicles(.:format)        | vehicles#index |
| create a vehicle      | POST   /vehicles(.:format)          | vehicles#create|
| Get a vehicle by ID     | GET    /vehicles/:id(.:format)        | vehicles#show|
| Get all bookings     | GET    /bookings(.:format)           | bookings#index|
| Create a booking      |  POST   /bookings(.:format)         | bookings#create |
| Get a booking by ID     | GET    /bookings/:id(.:format)          | bookings#show|
| Delete a booking     | DELETE /bookings/:id(.:format)        | bookings#destroy|

* Database Model
<img width="330" alt="image" src="https://github.com/kaizenkaizen/bizzy-car/assets/4138178/96e7cc0e-ab45-4579-9e52-bf2d8e984520">
<img width="328" alt="image" src="https://github.com/kaizenkaizen/bizzy-car/assets/4138178/3a8d3d6f-2ac8-43a5-a664-c8570d8b1681">
<img width="328" alt="image" src="https://github.com/kaizenkaizen/bizzy-car/assets/4138178/2851b50e-f51c-4cb9-8415-670328f299aa">


