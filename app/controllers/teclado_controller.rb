class TecladoController < ApplicationController
  def index
  end

  def estudar_teclado
    
    @teclado = Teclado.new
    @teclado = Teclado.first
    
    respond_to do |format|
      format.html { render html: @teclado }
      format.json { render html: @teclado }
    end
  end

  def exercitar_teclado
  end
end
