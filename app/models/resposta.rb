class Resposta < ActiveRecord::Base
  belongs_to :pergunta
  attr_accessible :pergunta_id, :resposta
end
