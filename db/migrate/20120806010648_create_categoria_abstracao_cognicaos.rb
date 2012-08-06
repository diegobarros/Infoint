class CreateCategoriaAbstracaoCognicaos < ActiveRecord::Migration
  def change
    create_table :categoria_abstracao_cognicoes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
