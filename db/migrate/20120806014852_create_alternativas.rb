class CreateAlternativas < ActiveRecord::Migration
  def change
    create_table :alternativas do |t|
      t.references :pergunta
      t.string :letra
      t.text :descricao

      t.timestamps
    end
    add_index :alternativas, :pergunta_id
  end
end
