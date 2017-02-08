require 'test_helper'

class CauControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cau_index_url
    assert_response :success
  end

  test "should get destroy" do
    get cau_destroy_url
    assert_response :success
  end

end
