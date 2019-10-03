class Patient
  attr_accessor
  
  @@all = []
  
  def initialize()
    
    @@all << self
  end
  
end