class Tecla < ActiveRecord::Base
  belongs_to :teclado
  belongs_to :categoria_tecla
  attr_accessible :descricao, :nome
end
