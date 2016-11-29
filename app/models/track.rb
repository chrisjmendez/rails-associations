class Track < ApplicationRecord
  belongs_to :album
  belongs_to :artist
  has_one :song
  
  validates :order, presence: true

end
