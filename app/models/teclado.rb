class Teclado < ActiveRecord::Base
  belongs_to :idioma
  has_many :teclas
  attr_accessible :padrao
end
