class Caractere < ActiveRecord::Base
  belongs_to :tecla
  belongs_to :posicao_caractere
  attr_accessible :simbolo
end
