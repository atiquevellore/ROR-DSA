class Node

    attr_accessor :data,:next

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
        @head == nil
    end

    def push(data)
        newnode = Node.new(data)
        if self.is_empty?
            @head = newnode
        else
            curr = @head
            while curr.next!= nil
                curr = curr.next
            end
            curr.next = newnode
        end
    end

    def unshift(data)
        newnode = Node.new(data)
        if self.is_empty?
            @head = newnode
        else
            newnode.next = @head
            @head = newnode
        end
    end

    def shift
        if self.is_empty?
            "linked list is currently empty"
        else
            curr_head = @head
            new_head = @head.next
            @head.next = nil
            @head = new_head
        end

    end

    def pop
        if self.is_empty?
            "linked list is currently empty"
        else
            curr = @head
            while curr.next.next != nil
                curr = curr.next
            end
            lastnode = curr.next;
            curr.next =  nil
        end
    end


    
    def prettyprint
        array = []
        if self.is_empty?
            return array
        else
            curr = @head
            while curr.next != nil
                array << curr.data
                curr = curr.next
            end
            array << curr.data
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
puts "linked list : #{l1.prettyprint}"