class EvenFibonacci

    def initialize(limit)
        @limit = limit
    end

    def sum

        a = 1
        b = 2
        fibonacci_value = 2
    
        while (a + b) <= @limit
    
            if (a + b).even?
                fibonacci_value += (a + b)
            end
            
            b_orig = b
            b += a
            a = b_orig
        end
        fibonacci_value

    end

end