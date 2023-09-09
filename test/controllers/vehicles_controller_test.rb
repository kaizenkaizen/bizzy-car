require "test_helper"

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "test_get_all_vehicles" do
    puts "\n TONY OUTPUT: Returning all vehicles in the system using endpoint <base_url>/vehicles/"
    get "/vehicles/"
    puts @response.body
  end    

end
