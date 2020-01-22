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
    
  end
  
  def songs 
    