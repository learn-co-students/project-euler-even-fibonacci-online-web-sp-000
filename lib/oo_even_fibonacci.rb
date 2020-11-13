# Implement your object-oriented solution here!

class EvenFibonacci
    attr_accessor :limit
    @@fibonacci_array

    def initialize(limit)
        @limit = limit
        fibonacci
    end

    def fibonacci
        @@fibonacci_array = [1,2]
    
        while @@fibonacci_array.length < 100
            new_number = @@fibonacci_array[@@fibonacci_array.length - 2] + @@fibonacci_array[@@fibonacci_array.length - 1]
            @@fibonacci_array.push(new_number)
        end
    
        @@fibonacci_array
    end

    def sum
        rejected_numbers = @@fibonacci_array.reject {|number| number > self.limit}
        even_numbers = rejected_numbers.reject {|number| number.odd?}
        even_numbers.sum
    end

end