require 'test_helper'

class ShoppersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
