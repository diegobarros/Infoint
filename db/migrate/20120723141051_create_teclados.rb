class CreateTeclados < ActiveRecord::Migration
  def change
    create_table :teclados do |t|
      t.references :idioma
      t.string :padrao, :null => true

      t.timestamps
    end
    add_index :teclados, :idioma_id
  end
end
