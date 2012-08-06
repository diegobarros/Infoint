class CreateAbstracaoCognicoes < ActiveRecord::Migration
  def change
    create_table :abstracao_cognicoes do |t|
      t.references :nivel
      t.references :categoria_abstracao_cognicao
      t.string :nome_atividade, :null => false

      t.timestamps
    end
    add_index :abstracao_cognicoes, :nivel_id
    add_index :abstracao_cognicoes, :categoria_abstracao_cognicao_id
  end
end
