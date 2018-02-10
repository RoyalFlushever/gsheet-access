require 'test_helper'

class GsheetControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get gsheet_read_url
    assert_response :success
  end

  test "should get write" do
    get gsheet_write_url
    assert_response :success
  end

end
