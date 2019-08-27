require "pry"
class Author 
  attr_accessor :name, :posts 
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(post)
    @posts << post
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
  
  # def self.post_count=(num)
  #   @@post_count += num
  # end  
  
  
end 