require 'test_helper'

class ProtosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get protos_index_url
    assert_response :success
  end

end
