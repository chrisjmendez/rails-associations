class Album < ApplicationRecord
  belongs_to :artist
  
  has_many :tracks, dependent: :destroy
  has_many :songs, through: :tracks
  # Not every album must have a title
  validates :title, presence: false
  # Album titles don't need to be unqique within the table but
  # Album titles within an artist's catalog must be unique
  validates_uniqueness_of :title, scope: :artist_id
end
