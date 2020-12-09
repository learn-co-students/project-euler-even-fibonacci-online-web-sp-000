# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    evens = []
    num = 2
    while self.class.fib(num) < @limit
      if self.class.fib(num).even?
        evens << self.class.fib(num)
      end
      num = num + 1
    end
    puts evens
    evens.sum
  end

  def self.fib(num)
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
end