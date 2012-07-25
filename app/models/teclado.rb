class Teclado < ActiveRecord::Base
  belongs_to :idioma
  has_many :teclas
  accepts_nested_attributes_for :teclas, :idioma
  attr_accessible :padrao, :teclas_attributes, :idioma_attributes
end
