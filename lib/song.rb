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
    temp = Song.new 
    temp.save
    temp
  end
  
  def self.new_by_name(name)
    temp = Song.new
    temp.name = name 
    temp 
  end
  
  def self.create_by_name(name)
    temp = self.create
    temp.name = name 
    temp 
  end
  
  def self.find_by_name(name)
    @@all.find
    

end
