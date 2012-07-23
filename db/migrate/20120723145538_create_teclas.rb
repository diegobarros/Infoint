class CreateTeclas < ActiveRecord::Migration
  def change
    create_table :teclas do |t|
      t.references :teclado
      t.references :categoria_tecla
      t.string :nome, :null => false
      t.text :descricao, :null => false

      t.timestamps
    end
    add_index :teclas, :teclado_id
    add_index :teclas, :categoria_tecla_id
  end
end
