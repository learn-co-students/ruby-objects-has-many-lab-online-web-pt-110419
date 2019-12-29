require_relative './song.rb'
require 'pry'
class Artist
attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end
def self.song_count
  Song.all.length
  
end

  def add_song(song)
    song.artist=self
  end
 
  def songs
    @songs
  end

def add_song_by_name(song)
  song = Song.new(song)
  song.artist = self
end


end