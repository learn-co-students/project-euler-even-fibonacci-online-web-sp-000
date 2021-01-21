# Implement your procedural solution here!

def even_fibonacci_sum(limit)
  array = [1, 2]
  sum = 3 
  array.push(sum)
  i = 4
  while i <= limit
    new_value = array[-1] + array[-2]
    array.push(new_value)
    i = new_value
  end
  even_array = array.filter { |num| num % 2 == 0 }
  even_array.reduce(0) {|accu, num| accu + num}
end