require 'test_helper'

class RandomquotesControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get randomquotes_get_url
    assert_response :success
  end

  test "should get post" do
    get randomquotes_post_url
    assert_response :success
  end

  test "should get show" do
    get randomquotes_show_url
    assert_response :success
  end

end
