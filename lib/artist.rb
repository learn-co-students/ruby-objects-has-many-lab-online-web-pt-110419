Lizzo= Artist.new("Lizzo")
Good_As_Hell = Song.new("Good As Hell","rap")
 
Good_As_Hell.artist = Lizzo
 
Good_As_Hell.artist.name #=> "Lizzo"
Lizzo.songs #=> []