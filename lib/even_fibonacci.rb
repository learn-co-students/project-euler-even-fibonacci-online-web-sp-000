# Implement your procedural solution here!

def fibonacci
    fibonacci_array = [1,2]

    while fibonacci_array.length < 100
        new_number = fibonacci_array[fibonacci_array.length - 2] + fibonacci_array[fibonacci_array.length - 1]
        fibonacci_array.push(new_number)
    end

    fibonacci_array
end

def even_fibonacci_sum(limit)
    new_fibonacci = fibonacci.reject {|number| number > limit}
    even_fibonacci = new_fibonacci.reject {|number| number.odd?}
    even_fibonacci.sum
end