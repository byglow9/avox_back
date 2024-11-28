class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nomeUsuario
      t.integer :idadeUsuario
      t.string :estadoLogin

      t.timestamps
    end
  end
end
