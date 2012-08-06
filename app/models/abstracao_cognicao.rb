class AbstracaoCognicao < ActiveRecord::Base
  belongs_to :nivel
  belongs_to :categoria_abstracao_cognicao
  has_many :perguntas
  attr_accessible :nome_atividade
  accepts_nested_attributes_for :nivel, :categoria_abstracao_cognicao
end
