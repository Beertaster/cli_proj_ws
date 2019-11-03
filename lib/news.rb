

class News 
  
  attr_accessor :name, :body, :hidden 
  
  @@all = []
  
  def initialize(name, body, hidden)
    @name = name 
    @body = body 
    @hidden = hidden
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_index(index)
    @@all[index]
  end
  
end
