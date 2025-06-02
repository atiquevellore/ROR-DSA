#Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.


# example 1:
=begin
Input: nums = [1,2,3,1]

Output: true

Explanation:

The element 1 occurs at the indices 0 and 3.
=end 
#solution time complexity is o(n logn)

def contains_duplicate(nums)
    nums.sort!
    i = 0

    for j in 1..nums.length -1
        if nums[i] = nums[j]
            return true
        end
        i = i+1
        j = j+1
    end
    return false 
end

