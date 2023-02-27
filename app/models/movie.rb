class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
  # validates uniqueness
  # overview presence true
end

## TO DO
## You can’t delete a movie if it is referenced in at least one bookmark.
