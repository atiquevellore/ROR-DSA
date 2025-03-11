=begin
 Example 1:

// Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
// Output: 6
=end

def maxsum(arr)
    sum = 0
    maxsum = arr[0]

    arr.each do |item|
        sum+=item
        if sum > maxsum
            maxsum = sum
        end
        if sum < 0
           sum  = 0
        end
    end

    return maxsum
end


nums = [-2,1,-3,4,-1,2,1,-5,4]
puts "output :#{maxsum(nums)}"