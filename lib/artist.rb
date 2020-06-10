require "pry"

class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    
  end  
  
  def self.all
   @@all
  
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def add_song(song)
    song.artist = self
  end
    
 
  
  def self.find_or_create_by_name(name)
     new_name = @@all.each do |artist|
       if artist.name == name
        new_name
    end
  end
 end  
  
  
end  