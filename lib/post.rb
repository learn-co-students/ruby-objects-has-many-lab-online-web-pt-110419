class Post
  attr_accessor :author, :title
  @@posts = []
  @@all = []
  
  def initialize(title)
    @author = author
    @title = title
    save
  end
  
  def save 
    @@posts << self
    @@all << self
  end
  
  def self.all
    @@posts
    @@all
  end
  
  def self.title
    @title 
  end
  
  def author_name
    if @author == nil
      return nil
    else
      @author.name 
    end
  end

end