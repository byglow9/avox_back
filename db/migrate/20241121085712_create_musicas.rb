class CreateMusicas < ActiveRecord::Migration[6.1]
  def change
    create_table :musicas do |t|
      t.integer :idMusica
      t.string :nomeArtista
      t.string :tituloMusica
      t.time :duracaoMusica
      t.string :generoMusica
      t.date :dataLancamento
      t.integer :qtdEnvolvidos
      t.string :nomesEnvolvidos
      t.integer :qtdReproducoes
      t.string :referenciaAlbum
      t.string :letraMusica

      t.timestamps
    end
  end
end
