class Node
    attr_accessor :data, :next
  
    def initialize(data)
      @data = data
      @next = nil
    end
  end
  
  class Sll
    def initialize
      @head = nil
    end
  
    def push(val)
      newnode = Node.new(val)
      if @head.nil?
        @head = newnode
      else
        cur = @head
        while cur.next != nil
          cur = cur.next
        end
        cur.next = newnode
      end
    end
  
    def unshift(val)
      newnode = Node.new(val)
      newnode.next = @head
      @head = newnode
    end
  
    def shift
      if @head.nil?
        return "linked list is empty"
      else
        @head = @head.next
      end
    end
  
    def pop
      if @head.nil?
        return "linked list is empty"
      elsif @head.next.nil?
        @head = nil
      else
        cur = @head
        while cur.next.next != nil
          cur = cur.next
        end
        cur.next = nil
      end
    end
  
    def printlist
      if @head.nil?
        puts "linked list is empty"
      else
        cur = @head
        while cur != nil
          puts cur.data
          cur = cur.next
        end
      end
    end
  end
  
  # Test the implementation
  l1 = Sll.new
  l1.push(10)
  l1.push(20)
  l1.push(30)
  l1.push(40)
  l1.printlist
  