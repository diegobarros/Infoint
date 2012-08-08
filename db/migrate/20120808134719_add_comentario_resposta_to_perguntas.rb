class AddComentarioRespostaToPerguntas < ActiveRecord::Migration
  def change
    add_column :perguntas, :comentario_resposta, :text
  end
end
