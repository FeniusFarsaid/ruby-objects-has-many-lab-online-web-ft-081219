require "pry"
class Author 
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end 
  
  def posts
    Post.all.select {|post| post.author == self}
  end 
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
  end 
  
  def self.post_count
    Post.all.size
  end
end 