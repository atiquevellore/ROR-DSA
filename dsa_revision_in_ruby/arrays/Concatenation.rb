# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
    ans = []
    for i in 0..1
        nums.each do |num|
            ans.push(num)
        end
    end
    ans
end