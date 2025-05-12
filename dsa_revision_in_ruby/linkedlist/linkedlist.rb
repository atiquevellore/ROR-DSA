class Node
    attr_accessor :data, :next

    def initialize(data)
        @data = data
        @next = nil
    end
end

class SingleLinkedList
    def initialize
        @head = nil
    end

    def is_empty?
        @head.nil?
    end

    def push(data)
        new_node = Node.new(data)
        if is_empty?
            @head = new_node
        else
            curr = @head
            curr = curr.next while curr.next
            curr.next = new_node
        end
    end

    def unshift(data)
        new_node = Node.new(data)
        if is_empty?
            @head = new_node
        else
            new_node.next = @head
            @head = new_node
        end
    end

    def shift
        if is_empty?
            puts "Linked list is currently empty"
        else
            curr_head = @head
            @head = @head.next
            curr_head.next = nil
        end
    end

    def pop
        if is_empty?
            puts "Linked list is currently empty"
        else
            curr = @head
            if curr.next.nil?
                @head = nil
            else
                curr = curr.next while curr.next.next
                curr.next = nil
            end
        end
    end

    def prettyprint
        array = []
        if is_empty?
            array
        else
            curr = @head
            while curr
                array << curr.data
                curr = curr.next
            end
            array
        end
    end
end

l1 = SingleLinkedList.new
l1.push(10)
l1.push(20)
l1.push(30)
l1.unshift(5)
l1.shift
l1.pop
puts "Linked list: #{l1.prettyprint}"
