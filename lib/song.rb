def add_song(song)
  @songs << song
  song.artist = self
end