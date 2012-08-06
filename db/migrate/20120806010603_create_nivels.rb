class CreateNivels < ActiveRecord::Migration
  def change
    create_table :niveis do |t|
      t.string :nome

      t.timestamps
    end
  end
end
