# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Vehicle.create({
    id: 2,
    year: "2008",
    make: "toyota",
    model: "highlander"
})

Customer.create({
    id: 2,
    firstName: "tony",
    lastName: "tao",
    phone: "4102746829",
    email: "tony@gmail.com"
})

Booking.create({
    id: 2,
    start: DateTime.current(),
    end: DateTime.current().at_end_of_hour(),
    vehicle_id: 2,
    customer_id: 2,
    location: "st charles automotive"
})

