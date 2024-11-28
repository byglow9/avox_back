class CreateJoinTablePlaylistMusica < ActiveRecord::Migration[6.1]
  def change
    create_join_table :playlists, :musicas do |t|
      t.index :playlist_id
      t.index :musica_id
    end
  end
end
