class CreateGeneroMusicals < ActiveRecord::Migration[6.1]
  def change
    create_table :genero_musicals do |t|
      t.string :nomeGenero
      t.string :descricaoGenero

      t.timestamps
    end
  end
end
