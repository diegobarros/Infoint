class Tecla < ActiveRecord::Base
  belongs_to :teclado
  belongs_to :categoria_tecla
  has_many :caracteres
  attr_accessible :descricao, :nome
end
