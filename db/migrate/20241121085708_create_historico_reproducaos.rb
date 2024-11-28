class CreateHistoricoReproducaos < ActiveRecord::Migration[6.1]
  def change
    create_table :historico_reproducaos do |t|
      t.integer :idUsuario
      t.integer :qtgMusicasReproduzidas
      t.string :nomeMusicasReproduzidas

      t.timestamps
    end
  end
end
