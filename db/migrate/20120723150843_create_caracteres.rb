class CreateCaracteres < ActiveRecord::Migration
  def change
    create_table :caracteres do |t|
      t.references :tecla
      t.references :posicao_caractere
      t.string :nome, :null => true
      t.string :simbolo, :null => false
      t.text :descricao, :null => true
      t.text :codigo_html, :null => true
      t.timestamps
    end
    add_index :caracteres, :tecla_id
    add_index :caracteres, :posicao_caractere_id
  end
end
