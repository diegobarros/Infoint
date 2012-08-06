class CategoriaAbstracaoCognicao < ActiveRecord::Base
  attr_accessible :nome
  has_many :abstracao_cognicoes
end
