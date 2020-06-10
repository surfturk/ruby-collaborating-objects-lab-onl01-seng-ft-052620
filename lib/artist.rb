require "pry"

class Artist
  attr_accessor :name, :song
  
  @@artists = []
  
  def initialize(name)
    @name = name
    @@all << self
    
  end  
  
  def self.all
   @@artists
  
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def add_song(song)
    song.artist = self
  end
    
 
  
  def self.find_or_create_by_name(name)
    binding.pry
    Artist.find {|artist| artist.name == self} 
    
  end  
  
  
end  