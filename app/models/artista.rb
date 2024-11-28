class Artista < ApplicationRecord
    has_many :albuns
    has_many :musicas, through: :albuns
end
  