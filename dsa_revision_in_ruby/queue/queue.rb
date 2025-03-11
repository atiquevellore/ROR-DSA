class Queue

    attr_reader  :items

    def initialize
        @items = []
    end

    def enqueue(ele)
        @items.push(ele)
    end

    def is_empty
        @items.length == 0;
    end

    def dequeue(ele)
        if is_empty
            return "UnderFlow cannot perform dequeu"
        end
         @items.shift
    end

    def front
        if is_empty
            return "No Elements in the Queue"
        end
        @items.first
    end

    def size

end