# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit 
  
  def initialize(limit)
    @limit = limit
  end
  
  def sum 
    array = [1]
    i = 2 
    while i < self.limit 
      array << i 
      i = array[-2] + array[-1]
    end
    
    evenArray = array.select do |number|
      number.even?
    end
    
    evenArray.reduce(0) { | total, number | total + number }
  end
  
end