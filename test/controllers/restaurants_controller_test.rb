require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get reviews" do
    get restaurants_reviews_url
    assert_response :success
  end

end
