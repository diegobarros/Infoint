class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :sigla, :limit => 2, :null => false
      t.string :nome, :null => false
      t.string :nome_nativo, :null => false

      t.timestamps
    end
  end
end
