class CreateRespostas < ActiveRecord::Migration
  def change
    create_table :respostas do |t|
      t.references :pergunta
      t.text :resposta

      t.timestamps
    end
    add_index :respostas, :pergunta_id
  end
end
