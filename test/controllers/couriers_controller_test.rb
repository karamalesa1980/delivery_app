require "test_helper"

class CouriersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get couriers_index_url
    assert_response :success
  end
end
