class CreatePosicaoCaracteres < ActiveRecord::Migration
  def change
    create_table :posicao_caracteres do |t|
      t.string :posicao

      t.timestamps
    end
  end
end
