class TecladoController < ApplicationController
  def index
  end

  def estudar_teclado
    @teclado = ::Teclado.new
    @teclado = Teclado.first
    
    respond_to do |format|
      format.html
      format.json { render html: @teclado }
    end
  end
  
  def visualizar_tecla
    @teclado = Teclado.new
    @teclado = Teclado.first
    
    @tecla = Tecla.find(params[:format]);
    
    render :html => @tecla
    

  end

  def exercitar_teclado
  end
end
