class CreateCategoriaAbstracaoCognicoes < ActiveRecord::Migration
  def change
    create_table :categoria_abstracao_cognicoes do |t|
      t.string :nome, :null => false

      t.timestamps
    end
  end
end
