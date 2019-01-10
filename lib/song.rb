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
    @@all.find {|el| el.name == name}
  end
    
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil 
      self.create_by_name(name)
    end
  end

end
