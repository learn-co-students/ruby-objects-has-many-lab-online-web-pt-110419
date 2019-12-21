class Song
 
  attr_accessor :title
 
  def initialize(title)
    @title = title
  end
end

slim_shady = Song.new("Slim Shady")
im_not_afraid = Song.new("I'm Not Afraid")

