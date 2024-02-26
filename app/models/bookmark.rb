class Bookmark < ApplicationRecord
  # Hace referencia a los primary_keys de las tablas movies y de las tablas list
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
