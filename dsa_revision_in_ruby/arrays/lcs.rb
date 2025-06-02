# longest consectutive sequence 


=begin
Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
=end

require 'Set'
def lcs(nums)
    set = Set.new(nums)
    longest = 0

    set.each do |num|
        if !set.include?(num-1)
            length = 0
            while set.include?(num+length)
                length += 1
            end
            longest = [longest,length].max
        end
    end
    return longest
end