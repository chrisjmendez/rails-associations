class Track < ApplicationRecord
  belongs_to :album
  belongs_to :artist
  has_one :song
  
  validates :order, presence: true

  Duration.new(:hours => 5, :minutes => 70) => #<Duration: hours=6, minutes=10, total=22200>
  
  
end
