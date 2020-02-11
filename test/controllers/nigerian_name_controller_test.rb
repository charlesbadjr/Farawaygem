require 'test_helper'

class NigerianNameControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get nigerian_name_get_url
    assert_response :success
  end

end
