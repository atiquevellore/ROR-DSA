class Stack

    def initialize
        @stack  = []
    end

    def push(val)
        @stack.push(val)
    end

    def pop
        @stack.pop
    end

    def top
        @stack.last;
    end

    def size
        @stack.length
    end
end