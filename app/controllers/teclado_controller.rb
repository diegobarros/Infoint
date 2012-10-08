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

  end
  
  
  
  def verificar_codigo
    
    if simple_captcha_valid?
        session[:acertos] = params[:acertos].to_i.next
        redirect_to :controller => 'teclado', :action => 'exercitar_teclado', :acertos => params[:acertos]
    else
        session[:erros] = params[:erros].to_i.next
       redirect_to :controller => 'teclado', :action => 'exercitar_teclado', :erros => params[:erros]
    end
   
  end
end