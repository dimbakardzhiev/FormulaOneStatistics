require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get drivers" do
    get api_drivers_url
    assert_response :success
  end

  test "should get results" do
    get api_results_url
    assert_response :success
  end

  test "should get races" do
    get api_races_url
    assert_response :success
  end

end
