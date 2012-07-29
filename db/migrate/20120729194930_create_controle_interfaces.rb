class CreateControleInterfaces < ActiveRecord::Migration
  def change
    create_table :controle_interfaces do |t|
      t.string :nome

      t.timestamps
    end
  end
end
