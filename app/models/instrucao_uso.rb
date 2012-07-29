class InstrucaoUso < ActiveRecord::Base
  belongs_to :controle_interface
  attr_accessible :instrucao
end
