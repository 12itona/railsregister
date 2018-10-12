require 'test_helper'

class ReturunControllerTest < ActionDispatch::IntegrationTest
  test "should get return" do
    get returun_return_url
    assert_response :success
  end

end
