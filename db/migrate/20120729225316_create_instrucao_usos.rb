class CreateInstrucaoUsos < ActiveRecord::Migration
  def change
    create_table :instrucao_usos do |t|
      t.references :controle_interface
      t.text :instrucao, :null => false

      t.timestamps
    end
    add_index :instrucao_usos, :controle_interface_id
  end
end
