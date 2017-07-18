require 'test_helper'

class LyteControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get '/'
    assert_response :success
  end
end