require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    #get :inicio
    get static_pages_inicio_url
    assert_response :success
    assert_select "title", "SmartTools | SmartTools"
  end

  test "should get nosotros" do
    get static_pages_nosotros_url
    #get :nosotros
    assert_response :success
    assert_select "title", "SmartTools | SmartTools"
  end

  test "should get ingresar" do
    get static_pages_ingresar_url
    #get :ingresar
    assert_response :success
    assert_select "title", "SmartTools | SmartTools"
  end

  test "should get contacto" do
    get static_pages_contacto_url
    #get :contacto
    assert_response :success
    assert_select "title", "SmartTools | SmartTools"
  end

end
