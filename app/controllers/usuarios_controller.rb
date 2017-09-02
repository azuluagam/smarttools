class UsuariosController < ApplicationController

  def show
    @usuario = Usuario.find(params[:id])
  end


  def new
    @usuario = Usuario.new 
  end


  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      flash[:success] = "Bienvenido a SmartTools!"
      redirect_to usuario_url(@usuario)
    else
      render 'new'
    end
  end


  def usuario_params
      params.require(:usuario).permit(:nombre, :apellido, :email, :password, :password_confirmation)
  end
end


