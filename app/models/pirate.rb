class Pirate
  attr_accessor :name, :weight, :height
  
  @@PIRATES= []
  
  def initialize(name, weight, height)
    @name = name 
    @weight = weight
    @height = height
    @@PIRATES << self
  end
  
  def self.all
    @@PIRATES 
  end
  
  def self.clear 
    @@PIRATES.clear 
  end
  
  
  
end