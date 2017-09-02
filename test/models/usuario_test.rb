require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = Usuario.new(nombre: "Diego Alexander", apellido: "Torres Ruiz",  email: "da.torresr@uniandes.edu.co")
  end

  test "should be valid" do
    assert @usuario.valid?
  end

  test "name should be present" do
    @usuario.nombre = "     "
    assert_not @usuario.valid?
  end

  test "apellido should be present" do
    @usuario.apellido = "     "
    assert_not @usuario.valid?
  end


  test "email should be present" do
    @usuario.email = "     "
    assert_not @usuario.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
