class Pergunta < ActiveRecord::Base
  belongs_to :abstracao_cognicao
  has_many :alternativas
  has_many :respostas
  attr_accessible :abstracao_cognicao_id, :descricao, :dica, :resposta, :url_imagem, :comentario_resposta, :alternativas_attributes
  accepts_nested_attributes_for :alternativas
end
