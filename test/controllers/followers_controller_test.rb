require 'test_helper'

class FollowersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
