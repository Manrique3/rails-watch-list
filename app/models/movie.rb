class Movie < ApplicationRecord
  #Se valida en el atributo de title y description que siempre debe tener valores
  #Para así no insertar registros vacíos en los nombres y que no se repitan.
  #Has_many para colocar uno a muchos entre el modelo de bookmark.
  validates :title, presence: :true
  validates :title, uniqueness: true
  validates :overview, presence: :true
  has_many :bookmarks
end
