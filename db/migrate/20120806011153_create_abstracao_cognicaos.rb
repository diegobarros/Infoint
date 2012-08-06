class CreateAbstracaoCognicaos < ActiveRecord::Migration
  def change
    create_table :abstracao_cognicoes do |t|
      t.references :nivel
      t.references :categoria_abstracao_cognicao
      t.string :nome

      t.timestamps
    end
    add_index :abstracao_cognicaos, :nivel_id
    add_index :abstracao_cognicaos, :categoria_abstracao_cognicao_id
  end
end
