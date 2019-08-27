class Song 
  attr_accessor :name
  
  def artist 
    @artist 
  end

  def artist=(artist)
    @artist = artist 
    artist.songs << self
    #Artist.song_count = 1
  end
  
   @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@all << self 
  end 
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
  def self.all
    @@all 
  end
  
end 