

def merge(l1,l2)
    dummy = ListNode.new 
    head = dummy

    while l1 and l2 
        if l1.val < l2.val 
            head.next = l1
            l1 = l1.next
        else
            head.next = l2 
            l2 = l2.next 
        end
        head = head.next 
    end

    if l1 
        head.next = l1
    elsif l2 
        head.next = l2 
    end 
    return dummy.next
end