# Implement your procedural solution here!
def fib(num)
  first = 1
  second = 2
  if num == 1
    result = 1
  elsif num == 2
    result = 2
  else
    (3..num).each do |i|
      result = first + second
      first = second
      second = result
    end
  end
  result
end


def even_fibonacci_sum(limit)
  evens = []
  num = 2
  while fib(num) < limit
    if fib(num).even?
      evens << fib(num)
    end
    num = num + 1
  end
  puts evens
  evens.sum
end