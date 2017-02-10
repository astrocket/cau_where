require 'test_helper'

class PubControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pub_index_url
    assert_response :success
  end

  test "should get new" do
    get pub_new_url
    assert_response :success
  end

  test "should get create" do
    get pub_create_url
    assert_response :success
  end

  test "should get show" do
    get pub_show_url
    assert_response :success
  end

  test "should get edit" do
    get pub_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get pub_destroy_url
    assert_response :success
  end

end
