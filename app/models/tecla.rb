class Tecla < ActiveRecord::Base
  belongs_to :teclado
  belongs_to :categoria_tecla
  has_many :caracteres
  accepts_nested_attributes_for :caracteres, :categoria_tecla
  attr_accessible :descricao, :nome, :caracteres_attributes, :categoria_tecla_attributes
end
