class Caractere < ActiveRecord::Base
  belongs_to :tecla
  belongs_to :posicao_caractere
  accepts_nested_attributes_for :posicao_caractere
  attr_accessible :simbolo, :posicao_caractere_attributes
end
