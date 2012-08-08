class Alternativa < ActiveRecord::Base
  belongs_to :pergunta
  attr_accessible :pergunta_id, :descricao, :letra
end
