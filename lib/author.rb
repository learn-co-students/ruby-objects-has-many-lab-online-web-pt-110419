class Author
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def add_post(post)
    @post << post
  end
end

def posts
    @posts
  end
end

charles_dickens = Author.new("Charles Dickens")
charles_dickens.add_post("Oliver Twist")
charles_dickens.add_post("Hard Times")

charles_dickens.posts

