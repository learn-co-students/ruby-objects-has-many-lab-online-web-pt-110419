require_relative './artist.rb'
require 'pry'
class Song
  
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
end

def artist=(artist)
 @artist = artist
 artist.songs << self
end

def artist_name
x = nil
self.artist&.name ? x = self.artist.name : x = nil
p x
end

end