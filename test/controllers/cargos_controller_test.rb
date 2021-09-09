require "test_helper"

class CargosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cargos_index_url
    assert_response :success
  end

  test "should get import" do
    get cargos_import_url
    assert_response :success
  end
end
