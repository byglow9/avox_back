class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.integer :idPlaylist
      t.string :nomePlaylist
      t.integer :qtgMusicas
      t.date :dataCriacao
      t.string :tipoPlaylist
      t.string :criadorPlaylist

      t.timestamps
    end
  end
end
