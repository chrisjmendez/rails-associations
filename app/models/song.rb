class Song < ApplicationRecord
  belongs_to :track
  belongs_to :artist
  
  belongs_to :albums
  
  validates :title, presence: true
end
