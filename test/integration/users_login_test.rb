require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invalid information" do
    get ingresar_path
    assert_template 'sessions/new'
    post ingresar_path, params: { session: { email: "", password: "" } }
    assert_template 'sesiones/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
