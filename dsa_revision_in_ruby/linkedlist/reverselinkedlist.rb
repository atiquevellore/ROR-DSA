# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

=begin 
example 1,2,3,4,5
5,4,3,2,1
expected out is 5 

prev = nil 
cur = 1
next_node = 2

1 -> nil 
prev = 1
cur = 2

nextnode = 3
cur.next = 1
prev = cur
cur = nextnode

=end

def reverse_list(head)
    cur = head
    prev = nil
    while(cur!=nil)
        nextnode = cur.next
        cur.next = prev
        prev = cur
        cur = nextnode
    end
    return prev
end