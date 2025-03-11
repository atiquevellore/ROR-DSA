#input given array is sorted

#numbers  = [2,3,4] , target = 6
#output = [1,3]


#numbers = [2,7,11,15], target = 9
#output = [1,2]

#explanation how can i solve this


def two_sum(numbers,target)
    l = 0
    r = numbers.length-1

    while l < r
        currsum = numbers[l] + numbers[r]
        if currsum > target
            r-=1
        elsif currsum < target
            l+=1
        else 
            [l+1, r+1]
        end
    end
end