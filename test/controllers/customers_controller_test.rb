require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "test_get_all_customers" do
    puts "\n TONY OUTPUT: Returning all customers in the system using endpoint <base_url>/customers/"
    get "/customers/"
    puts @response.body
  end    
end
