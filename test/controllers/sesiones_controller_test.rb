require 'test_helper'

class SesionesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ingresar_path
    assert_response :success
  end

end
