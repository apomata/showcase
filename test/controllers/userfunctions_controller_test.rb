require 'test_helper'

class UserfunctionsControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get project" do
    get :project
    assert_response :success
  end

end
