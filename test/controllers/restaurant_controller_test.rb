require 'test_helper'

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurant_index_url
    assert_response :success
  end

  test "should get new" do
    get restaurant_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurant_create_url
    assert_response :success
  end

  test "should get show" do
    get restaurant_show_url
    assert_response :success
  end

  test "should get edit" do
    get restaurant_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get restaurant_destroy_url
    assert_response :success
  end

end
