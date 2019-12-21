class Post
 
  attr_accessor :title
 
  def initialize(title)
    @title = title
  end
end

oliver_twist = Post.new("Oliver Twist")
hard_times = Post.new("Hard Times")
