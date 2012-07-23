class CreateCategoriaTeclas < ActiveRecord::Migration
  def change
    create_table :categoria_teclas do |t|
      t.string :nome, :limit => 25, :null => false

      t.timestamps
    end
  end
end
