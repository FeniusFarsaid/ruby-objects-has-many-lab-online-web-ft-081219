class Post 
  attr_accessor :title 
  
  def author  
    @author 
  end

  def author=(author)
    @author = author
    author.posts << self
    #Author.post_count = 1
  end
  
   @@all = []
  
  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self 
  end 
  
  def author_name
    if self.author 
      self.author.name
    else
      nil
    end
  end
  
  def self.all
    @@all 
  end
  
end 