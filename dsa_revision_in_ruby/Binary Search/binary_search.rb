#binary search

=begin
Example 1:

Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4

left   = 0
right = 5
mid = (0+5) /2 = 2
3 == 9 false

l = 3
r = 5

3+5 / 2
4
9 == 9 true

=end
def is_element_present(nums,target)
    left  = 0
    right = nums.length-1

    while left < right
        mid = left+right / 2.0
        if nums[mid] == target
            return true 
        elsif nums[mid] < target 
            left = mid + 1
        else 
             right = mid - 1
        end
    end
    return -1
end