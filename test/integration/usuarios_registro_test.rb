require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  .
  .
  .
  test "valid signup information" do
    get signup_path
    assert_difference 'Usuario.count', 1 do
      post usuario_path, params: { usuario: { nombre:  "Example User",
                                         apellido: "las name example"
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'usuarios/show'
  end
end
