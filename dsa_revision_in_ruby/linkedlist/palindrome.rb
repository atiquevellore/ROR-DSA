# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    str1 = ""
    str2 = ""
    cur = head
    while(cur!=nil)
     str1 = "#{str1}#{cur.val}"
     str2 = "#{cur.val}#{str2}"
     cur = cur.next
    end
    return str1 == str2
end