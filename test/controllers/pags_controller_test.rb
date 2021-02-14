require 'test_helper'

class PagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pags_index_url
    assert_response :success
  end

end
