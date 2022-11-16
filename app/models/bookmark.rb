class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, { scope: :list_id, message: 'is already in list' }
  # validates :movie_id && :list_id, uniqueness: true
end
