# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.delete_all
Album.delete_all
Track.delete_all
Song.delete_all

class Entry
  def initialize(artist_name, album_title, track_number, song_title, duration)
    # Create a song
    song = Song.create(title: song_title)

    # Create an artist
    artist = Artist.create(name: artist_name)
    # Song belongs to artist
    artist.songs << song

    # Albums are songs organized throught tracks
    album = Album.create(title: album_title, artist_id: artist.id )

    song.album_id = album.id

    # Tracks are songs ordered in a sequence
    track = Track.create(order: track_number, album_id: album.id, artist_id: artist.id )

    # Every track has a single song
    track.song = song

    # Add the track to the album
    album.tracks << track
  end
end

Entry.new("Metallica", "Black Album", 1, "Enter Sandman", "05:32")
Entry.new("Metallica", "Black Album", 2, "Sad But True", "05:25")
Entry.new("Metallica", "Black Album", 4, "The Unforgiven", "06:27")
Entry.new("Metallica", "S&M", 18, "Sad But True", "05:46")

Entry.new("No Doubt", "Tragic Kingdom", 2, "Excuse Me Mr.", "03:06")
Entry.new("No Doubt", "Tragic Kingdom", 4, "Happy Now", "03:44")
Entry.new("No Doubt", "Tragic Kingdom", 13, "End It On This", "03:46")
Entry.new("No Doubt", "The Singles Collection", 9, "Excuse Me Mr.", "03:04")

Entry.new("Failure", "Fantastic Planet", 11, "Leo", "03:06")
Entry.new("Failure", "Fantastic Planet", 13, "The Nurse Who Loved Me", "04:26")
Entry.new("Failure", "Fantastic Planet", 15, "Stuck On You", "04:29")
