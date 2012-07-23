class CategoriaTecla < ActiveRecord::Base
  attr_accessible :nome
  has_many :teclas
end
