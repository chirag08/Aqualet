require 'test_helper'

class CustomerControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
