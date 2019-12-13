class Author 
  attr_accessor :name 
  
  
  def initialize(name)
    @name = name 
  end 
  
  def add_post(posts)
    posts.author = self 
  end 
  
  def add_post_by_title(title)
       new_post = Post.new(title)
       add_post(new_post)
  end 
  
  def self.post_count
    Post.all.length 
  end 
  
  
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 