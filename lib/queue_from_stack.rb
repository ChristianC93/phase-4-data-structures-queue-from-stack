require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        @s2.push(value)
        if @s1.empty?
            while @s2.empty? == false
                @s1.push(@s2.pop)
            end
        end
    end

    def remove
        if @s1.empty?
            while @s2.empty? == false
                @s1.push(@s2.pop)
            end
        end
        @s1.pop
    end

    def peek
        @s1.peek
    end

   
end
