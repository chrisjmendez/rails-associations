class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_many :tracks, dependent: :destroy
  
  # http://api.rubyonrails.org/classes/ActiveRecord/Validations/ClassMethods.html#method-i-validates_associated
  validates_associated :songs, :albums, :tracks
  # http://api.rubyonrails.org/classes/ActiveRecord/Validations/ClassMethods.html#method-i-validates_uniqueness_of
  validates :name, presence: true
  # Artists must have a unique name
  validates :name, uniqueness: true
end
