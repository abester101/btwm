require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get competitions" do
    get :competitions
    assert_response :success
  end

end
