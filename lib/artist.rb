class Artist
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
  end
end

def add_song(song)
    @songs << song
  end
end

def songs
    @songs
  end
end

eminem = Artist.new("Eminem")
eminem.add_song("Slim Shady")
eminem.add_song("I'm Not Afraid")

eminem.songs


