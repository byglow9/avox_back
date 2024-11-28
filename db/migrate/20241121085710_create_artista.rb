class CreateArtista < ActiveRecord::Migration[6.1]
  def change
    create_table :artista do |t|
      t.string :nomeArtista
      t.string :senhaArtista
      t.integer :qtdMusicasPublicadas
      t.integer :qtdAlbunsPublicados

      t.timestamps
    end
  end
end
