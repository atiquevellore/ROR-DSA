# Given two integer arrays nums1 and nums2, return an array of their 
# intersection
# . Each element in the result must be unique and you may return the result in any order.

 

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2]
# Example 2:

# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [9,4]
# Explanation: [4,9] is also accepted.

require 'set'
def intersection(nums1,nums2)
    nums1 = nums1.to_set
     resarr = []
    nums2.each do |item|
        if nums1.include?(item)
            nums1.delete(item)
            resarr.push(item)
        end
    end
    return resarr
end

#can be solved without using set

def intersection(nums1,nums2)
    resarr = []
    nums2.each do |item|
        if nums1.include?(item)
           resarr.push(item)
           nums1.delete(item)
        end
     end
     return resarr
end

puts intersection([4,9,5],[9,4,9,8,4])