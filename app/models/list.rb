class List < ApplicationRecord
  #Validación del atributo no puede estar vacío y no puede repetirse.
  #Valida con la base de datos si el name ya existe antes de insertarlo.
  #Has_many para colocar uno a muchos entre el modelo de bookmark.
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :image
end
