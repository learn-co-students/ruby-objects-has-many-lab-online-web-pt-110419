class Artist 
  attr_accessor :name 
  
  
  #@@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  #  @@all << self 
  end 
  
  def songs
  # @songs
   Song.all.select {|song|song.artist = self}
  end 
  
  def add_song(song)
    #@songs  <<
    song.artist = self 
   end  
   
   def add_song_by_name(song_name)
     song=Song.new(song_name)
     @songs << song
     add_song(song)
   end
   
   def self.song_count
     Song.all.count 
   end 
   
   
   
  
end 