class Idioma < ActiveRecord::Base
  attr_accessible :nome, :nome_nativo, :sigla
  has_many :teclados
end
