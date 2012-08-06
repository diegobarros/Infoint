class CreateNiveis < ActiveRecord::Migration
  def change
    create_table :niveis do |t|
      t.string :nome, :null => false

      t.timestamps
    end
  end
end
