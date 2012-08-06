class CreatePerguntas < ActiveRecord::Migration
  def change
    create_table :perguntas do |t|
      t.references :abstracao_cognicao
      t.text :descricao, :null => false
      t.text :resposta, :null => false
      t.text :dica, :null => true
      t.text :url_imagem, :null => true

      t.timestamps
    end
    add_index :perguntas, :abstracao_cognicao_id
  end
end
