class Album < ApplicationRecord
    belongs_to :artista
    has_many :musicas
end
  