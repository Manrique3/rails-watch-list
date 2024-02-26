class Bookmark < ApplicationRecord
  # Hace referencia a los primary_keys de las tablas movies y de las tablas list
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id, message: "has already been bookmarked in this list" }
  validates :comment, length: { in: 6..20 }
end
