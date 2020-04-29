class Song 
  @@all = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
  @genre = genre
  @name = name
  @artist = artist
  @@all << self
  end

  def self.all
    @@all
  end

end 