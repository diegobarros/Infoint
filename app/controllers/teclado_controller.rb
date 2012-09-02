class TecladoController < ApplicationController
  

    
  
  def index
  end

  def estudar_teclado
     @teclado = Teclado.new
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
    @vetor = Array.new
      
    verify_recaptcha ? @acertou = 1 : @acertou = 0;
    
    if verify_recaptcha
      @acertou = 1
    else
      @acertou = 0
    end
    
    @vetor.push(@acertou);

    render :html => @vetor
    
    
  end
  
  
  
  
  
end
