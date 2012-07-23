class CreatePosicaoCaracteres < ActiveRecord::Migration
  def change
    create_table :posicao_caracteres do |t|
      t.string :posicao, :limit => 10, :null => false

      t.timestamps
    end
  end
end
