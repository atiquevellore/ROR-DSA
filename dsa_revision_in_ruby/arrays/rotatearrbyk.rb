#Input: nums = [1,2,3,4,5,6,7], k = 3
#Output: [5,6,7,1,2,3,4]

def rotatebyk(arr,k)
     #handling the edge case
     k = k % nums.length

     l = 0
     r = nums.length-1
     while l<r
         nums[l],nums[r] = nums[r], nums[l]
         l+=1
         r-=1
     end
     l = 0
     r = k-1
     while l<r
         nums[l],nums[r] = nums[r], nums[l]
         l+=1
         r-=1
     end
     l = k
     r = nums.length-1
     while l<r
         nums[l],nums[r] = nums[r], nums[l]
         l+=1
         r-=1
     end
end

puts "output: #{rotatebyk([1,2,3,4,5,6,7],3)}"