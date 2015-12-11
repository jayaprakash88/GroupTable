require 'test_helper'

class SecretCodeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
