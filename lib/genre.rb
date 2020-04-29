class Genre 
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    @@all << self
  end 

  def self.all 
    @@all 
  end
  
  def songs
    Song.all.find_all do |song| 
      song.genre == self
    end 
  end 

  def artists
    Song.all.collect do |song|
        song.genre == self
        song.artist
    end 
  end 
end 