class Genre 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name)
    Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    songs.collect{|song| song.genre}
  end
end