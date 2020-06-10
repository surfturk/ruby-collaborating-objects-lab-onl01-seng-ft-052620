class Song 
  attr_accessor :name, :artist
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
  end  
  
  def self.all
  @@all
 end
 
 def self.new_by_filename(filename)
   binding.pry
   file = filename.split(" - ")
   song = self.new(file)
   
 end   
 
 
 
 
 
end
