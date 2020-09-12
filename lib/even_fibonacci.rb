# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  array = [1, 2]
  
  i = 1 + 2
  while i < limit
    array << i
    i = array[-2] + array[-1]
  end
  puts array
  
  newArray = array.select do |item| 
     item.even?  
  end
  
  newArray.reduce(0) {|total, item| total + item }
  
end