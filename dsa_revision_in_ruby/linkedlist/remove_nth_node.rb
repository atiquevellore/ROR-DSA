# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    slow = head
   fast = head
 
   # Move fast pointer n steps ahead
   n.times do
     fast = fast.next
   end
 
   # If fast reached the end, remove the head
   return head.next if fast.nil?
 
   # Move both pointers until fast reaches the end
   while fast.next
     fast = fast.next
     slow = slow.next
   end
 
   # Remove the nth node from end
   slow.next = slow.next.next
   head
 end