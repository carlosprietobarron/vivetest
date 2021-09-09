require "test_helper"

class LoadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get load_index_url
    assert_response :success
  end

  test "should get import" do
    get load_import_url
    assert_response :success
  end
end
