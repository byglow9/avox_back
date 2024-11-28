class Musica < ApplicationRecord
    belongs_to :genero_musical
    belongs_to :album
    has_and_belongs_to_many :playlists
    has_one_attached :audio_file
end
  