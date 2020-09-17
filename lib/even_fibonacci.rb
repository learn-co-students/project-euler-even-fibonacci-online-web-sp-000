# Implement your procedural solution here!

  def even_fibonacci_sum(limit)
    i, first, second = 0, 0, 1
    target = []
    while i < limit
        i = first + second
        break if i > limit
        target << i if i.even?
        first, second = second, i
    end
    target.reduce(:+)
  end
