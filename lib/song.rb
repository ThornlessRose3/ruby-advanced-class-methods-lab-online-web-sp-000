class Song
 
  attr_accessor :name, :artist_name
 
 @@all = []

  def self.all
    @@all
  end
  
  def initialize(name)
    @name = (name)
    self.save
  end

  def save
    self.class.all << self
  end

  def self.create(name = nil)
    self.new(name)
  end

  def self.new_by_name(name)
     self.new(name)
 end
 
 def self.create_by_name(name)
   self.new_by_name(name)
 end

 def self.find_by_name(name)
    @@all.find {|song| song.name == name}
 end
  
 def self.find_or_create_by_name(name)
    if @@all.include?(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
 end
  
  def self.alphabetical
    
  end
  
  def self.new_from_filename
    
  end
  
  def self.create_from_filename
    
  end
  
  def self.destroy_all
    @@all = []
  end
  

end
