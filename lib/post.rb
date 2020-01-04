class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
    song.artist = self
  end
 
  def songs
    @songs
  end
end

class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end