class EvenFibonacci

  attr_reader :sum

  def initialize(limit)
    @limit = limit
    @sum = even_fibonacci_sum
  end

  def even_fibonacci_sum
    fib_nums = [1,2]

    while fib_nums[-1] + fib_nums[-2] <= @limit
      fib_nums.push(fib_nums[-1] + fib_nums[-2])
    end

    return fib_nums.select {|num| num.even?}.sum
  end

end
