class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    binding.pry
    @path = path
    @files = []
    Dir.foreach(@path) do |file|
      if file.include?("mp3") 
        @files << file
    end
  end  
 end 
 
 
 def import
   
   
 end 
 
 
 
  
end  