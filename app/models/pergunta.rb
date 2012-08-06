class Pergunta < ActiveRecord::Base
  belongs_to :abstracao_cognicao
  attr_accessible :descricao, :dica, :resposta, :url_imagem
end
