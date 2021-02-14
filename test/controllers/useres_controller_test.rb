require 'test_helper'

class UseresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get useres_new_url
    assert_response :success
  end

end
