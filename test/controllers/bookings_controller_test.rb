require "test_helper"
require 'json'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  @bookingId

  # self.test_order = :defined

  # test "test_get_all_bookings" do
    
  # end

  test "validate_apis_work" do

    puts "\n TONY OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/ "
    get "/bookings/"
    puts @response.body
    @bookingId = JSON.parse(@response.body)[0]['id']
    puts @bookingId

    puts "\n TONY OUTPUT: removing a booking using DELETE <base_url>/bookings/980190962 "
    delete booking_url(Booking.first)


    puts "\n TONY OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/ "
    get "/bookings/"
    puts @response.body
 
    puts "\n TONY OUTPUT: adding a booking using POST <base_url>/bookings/ "
    post bookings_url, params: { start: DateTime.current(), end: DateTime.current(), vehicle_id: vehicles(:one)['id'], customer_id: customers(:one)['id'], location: "st johns auto" }


    puts "\n TONY OUTPUT: Returning all bookings in the system using endpoint <base_url>/bookings/ "
    get "/bookings/"
    puts @response.body
  end  

end
