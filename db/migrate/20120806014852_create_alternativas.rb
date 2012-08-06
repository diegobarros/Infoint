class CreateAlternativas < ActiveRecord::Migration
  def change
    create_table :alternativas do |t|
      t.references :pergunta
      t.string :letra, :limit => 2, :null => false
      t.text :descricao, :null => false

      t.timestamps
    end
    add_index :alternativas, :pergunta_id
  end
end
