class PosicaoCaractere < ActiveRecord::Base
  has_many :caracteres
  attr_accessible :posicao
end
