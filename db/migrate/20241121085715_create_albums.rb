class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :nomeAlbum
      t.string :nomeArtista
      t.integer :qtdMusicas
      t.date :dataLancamento

      t.timestamps
    end
  end
end
