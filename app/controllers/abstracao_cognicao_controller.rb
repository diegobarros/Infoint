class AbstracaoCognicaoController < ApplicationController
  def index
  end

  def memoria
  end

  def logica
    @perguntas_logica = AbstracaoCognicao.new;
    @perguntas_logica = AbstracaoCognicao.find(2)
    
    respond_to do |format|
      format.html
      format.json { render html: @perguntas_logica }
    end
    
    
  end

  def verbal
    
    @analogias_verbais = AbstracaoCognicao.new;
    @analogias_verbais = AbstracaoCognicao.find(1)
    
    respond_to do |format|
      format.html
      format.json { render html: @analogias_verbais }
    end
    
  end
end
