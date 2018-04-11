require 'test_helper'

class ContributorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contributors_index_url
    assert_response :success
  end

end
