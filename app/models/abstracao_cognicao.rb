class AbstracaoCognicao < ActiveRecord::Base
  belongs_to :nivel
  belongs_to :categoria_abstracao_cognicao
  attr_accessible :nome_atividade
end
