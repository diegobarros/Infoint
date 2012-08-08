class AbstracaoCognicaoController < ApplicationController
  def index
  end

  def memoria
  end

  def logica
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
