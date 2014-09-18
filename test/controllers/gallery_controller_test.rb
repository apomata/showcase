require 'test_helper'

class GalleryControllerTest < ActionController::TestCase
  test "should get projects" do
    get :projects
    assert_response :success
  end

end
