# Implement your object-oriented solution here!

class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    i, first, second = 0, 0, 1
    target = []
    while i < @limit
        i = first + second
        break if i > @limit
        target << i if i.even?
        first, second = second, i
    end
    target.reduce(:+)
  end
end
