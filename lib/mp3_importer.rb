class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = []
    Dir.for.each(@path) {|file| if file.include?("mp3")   @files << file}
  end  
 
 def 
 
 
  
end  