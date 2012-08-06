class Alternativa < ActiveRecord::Base
  belongs_to :pergunta
  attr_accessible :descricao, :letra
end
