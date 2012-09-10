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
    @estatisticas = Hash.new
    render :html => @vetor

  end
  
  
  
  def verificar_codigo
    
    if simple_captcha_valid?
        redirect_to :controller => 'teclado', :action => 'exercitar_teclado', :acertos => params[:acertos].to_i.next
    else
        redirect_to :controller => 'teclado', :action => 'exercitar_teclado', :erros => params[:erros].to_i.next
    end
   
  end
end