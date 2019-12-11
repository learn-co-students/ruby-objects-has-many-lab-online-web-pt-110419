require 'pry'

class Artist 
  attr_accessor :name, :artist
  
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all
  end
  
  def add_song(song)
    song.artist = self
    @@song_count += 1 
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    add_song(song)
  end
  
  def self.song_count
    @@song_count += 1
  end
end


