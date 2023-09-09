# README

This application uses Ruby on Rails, and a locally installed sqlite3 database 

* Ensure that you have Ruby version 3.2.2. Verify this by running ```ruby --version``` in terminal

* how to run the server:
  * cd into the app folderchange into the app folder, Run: ```cd app``` 
  * Run: ```Rails S```
 
* how to run unit tests:
  * change into the app folder, Run: ```cd app```
  * Run: ```bin/rails test```
  * look at the output to see the integration tests calling the different endpoints
 
* Sample output of unit tests
  * TEST OUTPUT: Returning all customers in the system using endpoint <base_url>/customers/
  * [{"id":980190962,"firstName":"john","lastName":"smith","phone":"123456789","email":"tony@gmail.com","created_at":"2023-09-09T07:44:07.932Z","updated_at":"2023-09-09T07:44:07.932Z"}]
  * TEST OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/
  * [{"id":980190962,"start":"2023-09-08T13:30:00.000Z","end":"2023-09-08T14:30:00.000Z","vehicle_id":980190962,"customer_id":980190962,"created_at":"2023-09-09T07:44:07.930Z","updated_at":"2023-09-09T07:44:07.930Z","location":null}]
980190962
  * TEST OUTPUT: removing a booking using DELETE <base_url>/bookings/980190962
  * TEST OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/
  * []
  * TEST OUTPUT: adding a booking using POST <base_url>/bookings/
  * TEST OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/
  * [{"id":1,"start":"2023-09-09T07:44:08.000Z","end":"2023-09-09T07:44:08.000Z","vehicle_id":980190962,"customer_id":980190962,"created_at":"2023-09-09T07:44:08.054Z","updated_at":"2023-09-09T07:44:08.054Z","location":"st johns auto"}]
   * TEST OUTPUT: Returning all vehicles in the system using endpoint <base_url>/vehicles/
   * [{"id":980190962,"year":"2021","make":"toyota","model":"avalon","created_at":"2023-09-09T07:44:07.933Z","updated_at":"2023-09-09T07:44:07.933Z"}]
   * Finished in 0.145846s, 20.5696 runs/s, 0.0000 assertions/s.
   * 3 runs, 0 assertions, 0 failures, 0 errors, 0 skips 

* APIs are hosted at localhost:3000, the following routes are available:

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


