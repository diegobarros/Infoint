class CreatePerguntas < ActiveRecord::Migration
  def change
    create_table :perguntas do |t|
      t.references :abstracao_cognicao
      t.text :descricao
      t.text :resposta
      t.text :dica
      t.text :url_imagem

      t.timestamps
    end
    add_index :perguntas, :abstracao_cognicao_id
  end
end
