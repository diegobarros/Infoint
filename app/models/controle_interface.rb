class ControleInterface < ActiveRecord::Base
  has_many :instrucao_usos
  attr_accessible :nome, :instrucao_usos_attributes
  accepts_nested_attributes_for :instrucao_usos
end
