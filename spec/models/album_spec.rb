require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validations" do
    it 'requires title' do
=begin
      album = Album.new(title: '')
      album.valid?
      
      # Variant #1
      #expect(album.errors[:title]).to include("can't be blank")
      # Variant #2
      #expect(album.errors[:title]).not_to be_empty
      # Variant #3
      expect(album.valid?).to be_falsy
=end
    end
    
    # Title need to be unique within the scope of a single user
    # Different users can have albums with different titles
    it 'requires title to be unique for every album –but many albums can have the same title' do

=begin
      album = FactoryGirl.create(:album)

      puts "#{album.inspect}"
      
      album_title = FactoryGirl.create(:album, title: "Black Album", album: album)
      
      new_album = Album.new(title: "Black Album", album: album)
      
      expect(new_album.valid?).to be_falsy
=end
    end
    
    it 'allows different artists to have albums with identicle titles' do
=begin
      artist1 = FactoryGirl.create(:artist)
      artist2 = FactoryGirl.create(:artist)
=end
    end
  end  
end
