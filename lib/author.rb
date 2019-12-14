class Author 
  
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(posts)
    @posts << posts 
    posts.author = self
  end
  
  def posts
    Post.all.select { |posts| posts.author == self}
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    add_post(posts)
  end
  
  def self.post_count
    Post.all.count
  end
  
end