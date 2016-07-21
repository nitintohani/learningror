require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get help" do
    get :help
    assert_response :success
  end

end
