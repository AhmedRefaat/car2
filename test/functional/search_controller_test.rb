require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
