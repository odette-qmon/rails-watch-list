class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  # movie and list cannot be blank
  # is unique for a given movie/list couple
  validates :movie_id, uniqueness: { scope: :list_id }
end
