class Pergunta < ActiveRecord::Base
  belongs_to :abstracao_cognicao
  has_many :alternativas
  attr_accessible :descricao, :dica, :resposta, :url_imagem
  accepts_nested_attributes_for :alternativas
end
