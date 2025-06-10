class Node 
    attr_accessor :data,:next
    
    def initialize(data)
        @data = data 
        @next = nil 
    end
end


class Sll
    
    def initialize 
      @head = nil 
    end
    
    def is_empty
        @head.nil?
    end
    
    def unshift(value)
        node = Node.new(value)
        if is_empty
           @head = node 
        else
          node.next = @head 
          @head = node 
        end
    end
    
    def shift
        if is_empty
          puts "linked list is empty"
        else 
          cur = @head 
          @head = @head.next 
          cur.next = nil
        end
    end
    
    
    
    def push(value) 
        node = Node.new(value)
        if is_empty
          @head = node 
        else
          cur = @head 
          cur = cur.next while cur.next 
          cur.next = node 
        end
    end
    
    def pop
        if is_empty
            puts "linked list is empty"
        end
        cur = @head
        if cur.next.nil? 
           @head = nil 
        else 
          cur = cur.next while cur.next.next
          cur.next = nil 
        end
    end
    
    def print 
      arr = []
      cur = @head 
       while cur
          arr << cur.data 
          cur = cur.next
       end
       arr
    end
end

l1 = Sll.new
l1.push(10)
l1.push(20)
l1.unshift(5)
l1.pop
l1.shift
puts l1.print

