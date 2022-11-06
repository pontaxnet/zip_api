require "test_helper"

class ZipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zips_index_url
    assert_response :success
  end
end
