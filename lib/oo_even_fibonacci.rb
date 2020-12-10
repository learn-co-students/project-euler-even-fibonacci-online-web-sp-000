# Implement your object-oriented solution here!
class EvenFibonacci
    attr_reader :num

    def initialize(num)
        @num = num
    end

    def sum
        fibonacci_nums = [1, 2]
        counter = fibonacci_nums[1]
    
        result = 0
    
        until counter >= @num
            fibonacci_nums << fibonacci_nums[fibonacci_nums.size-1] + fibonacci_nums[fibonacci_nums.size-2]
            counter = fibonacci_nums[fibonacci_nums.size - 1] + fibonacci_nums[fibonacci_nums.size-2]
        end
    
        fibonacci_nums.each do |n|
            if n % 2 === 0
                result += n
            end
        end
    
        result
    end
end