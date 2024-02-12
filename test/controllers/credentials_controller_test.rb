require "test_helper"

class CredentialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get credentials_index_url
    assert_response :success
  end
end
