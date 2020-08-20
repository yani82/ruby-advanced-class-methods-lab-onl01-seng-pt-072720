class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = self.new 
    self.all << song 
    song 
  end 
  
  def self.new_by_name(title)
    song = self.new 
    song.name = title 
    song 
  end 
   
  def self.find_or_create_by_name(title) 
    song = self.create 
    song.name = title 
    song 
  end

end
