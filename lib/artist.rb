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
   # binding.pry
     new_name = @@all.find do |artist|
        artist.name == name
      end
         if new_name 
          new_name
        else
          self.new(name)
  end
 end  
  
  
end  