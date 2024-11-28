class Usuario < ApplicationRecord
    self.table_name = 'usuarios'
  
    # Devise modules
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Associations
    has_many :playlists
    has_many :historico_reproducao
  
    # Validations
    validates :name, presence: true
end
  