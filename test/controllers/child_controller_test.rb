require 'test_helper'

class ChildControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get child_index_url
    assert_response :success
  end

  test "should get show" do
    get child_show_url
    assert_response :success
  end

  test "should get new" do
    get child_new_url
    assert_response :success
  end

  test "should get edit" do
    get child_edit_url
    assert_response :success
  end

end
