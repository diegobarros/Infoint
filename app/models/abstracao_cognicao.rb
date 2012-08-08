class AbstracaoCognicao < ActiveRecord::Base
  belongs_to :nivel
  belongs_to :categoria_abstracao_cognicao
  has_many :perguntas
  accepts_nested_attributes_for :nivel, :categoria_abstracao_cognicao, :perguntas
  attr_accessible :nivel_id, :categoria_abstracao_cognicao_id, :nome_atividade, :nivel_attributes, :perguntas_attributes, :categoria_abstracao_cognicao_attributes
  
end
