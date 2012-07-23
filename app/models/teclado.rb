class Teclado < ActiveRecord::Base
  belongs_to :idioma
  attr_accessible :padrao
end
