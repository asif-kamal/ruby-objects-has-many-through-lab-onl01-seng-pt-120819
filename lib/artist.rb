class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << name
  end
  
  def new_song(name, genre)
    Song.new(name, genre)
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
     Song.all.select{|song| song.genre == self}
  end
  
end