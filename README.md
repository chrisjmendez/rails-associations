# Rails Console

Destroy and rebuild the database with simple data
```language-powerbash
rails test:wipe
```

Enter Rails Console
```language-powerbash
rails c
```

Show which albums this Artist has
```language-powerbash
Artist.first.albums
```

Show the tracks from within an album
```language-powerbash
Artist.first.albums.first.tracks
```

Show the name of the song starting from ```Artist``` > ```Album``` > ```Track``` > ```Song```
```language-powerbash
Artist.first.albums.first.tracks.first.song.title
```


Find the artist this songs belongs to
```language-powerbash
Song.first.artist
```

Get the album a song belongs to
```language-powerbash
Song.first.track.album
```


Get the tracks from a specific album
```language-powerbash
Album.second.tracks
```

Show the artist this album belongs to
```language-powerbash
Album.first.artist
```

Find the songs with the title "Sad But True"
```language-powerbash
Song.where("title = 'Sad But True'", Song.pluck(:title))
```

Find the songs with the text "sad" within the title
```language-powerbash
Song.where("title ILIKE ?", "%sad%")
```


---

# Goals

- An artist has many songs <> Songs belong to artists
- An artist has many albums <> Albums belong to artists
- An album has many tracks <> Tracks belong to albums <> Tracks have one song
- Songs belong to many albums through tracks

I want to be able to:

- Access an artist starting with a song 
```
Song.first.artist
```

- Access an album starting from a song 
```
Song.find_by_title("Enter Sandman").tracks.first.album
```

- Access a song starting from a artist 
```
Artist.find_by_name("Metallica").albums.first.tracks.first.song
```

- Access a track's order starting from a song 
```
Song.first.albums.first.tracks.first.order
```


- Access all the albums this song can be found on
```
Song.first.albums
```
Alternative Method
```
Song.first.tracks.album
```

---

# Resources

- [https://gorails.com/episodes/comments-with-polymorphic-associations](https://gorails.com/episodes/comments-with-polymorphic-associations)
- [http://railscasts.com/episodes/154-polymorphic-association](http://railscasts.com/episodes/154-polymorphic-association)
- [http://6ftdan.com/allyourdev/2015/02/10/rails-polymorphic-models/](http://6ftdan.com/allyourdev/2015/02/10/rails-polymorphic-models/)
- [https://www.sitepoint.com/brush-up-your-knowledge-of-rails-associations/](https://www.sitepoint.com/brush-up-your-knowledge-of-rails-associations/)
- [http://6ftdan.com/allyourdev/2015/02/10/rails-polymorphic-models/](http://6ftdan.com/allyourdev/2015/02/10/rails-polymorphic-models/)
- [http://6ftdan.com/allyourdev/2014/08/01/manual-polymorphic-creation-in-rails/](http://6ftdan.com/allyourdev/2014/08/01/manual-polymorphic-creation-in-rails/)
- [https://github.com/danielpclark/PolyBelongsTo](https://github.com/danielpclark/PolyBelongsTo)

- [PolyBelongsTo gem](https://github.com/danielpclark/PolyBelongsTo)
