# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    res = []
    subset = []

    dfs=lambda do |i|
        if i>= nums.length
            res << subset.clone
            return 
        end 

        subset.push(nums[i])
        dfs.call(i+1)

        subset.pop
        dfs.call(i+1)
    end

    dfs.call(0)
    return res
end