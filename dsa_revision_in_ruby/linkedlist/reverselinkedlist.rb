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