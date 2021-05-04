def even_fibonacci_sum(limit)

    a = 1
    b = 2
    fibonacci_value = 2

    while (a + b) <= limit

        if (a + b).even?
            fibonacci_value += (a + b)
        end
        
        b_orig = b
        b += a
        a = b_orig
    end
    fibonacci_value

end

# puts even_fibonacci_sum(10).inspect