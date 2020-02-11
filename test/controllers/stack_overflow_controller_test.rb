require 'test_helper'

class StackOverflowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stack_overflow_index_url
    assert_response :success
  end

  test "should get new" do
    get stack_overflow_new_url
    assert_response :success
  end

  test "should get create" do
    get stack_overflow_create_url
    assert_response :success
  end

  test "should get edit" do
    get stack_overflow_edit_url
    assert_response :success
  end

  test "should get show" do
    get stack_overflow_show_url
    assert_response :success
  end

  test "should get delete" do
    get stack_overflow_delete_url
    assert_response :success
  end

end
