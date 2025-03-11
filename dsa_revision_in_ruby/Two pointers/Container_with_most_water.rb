=begin
#input = [1,8,6,2,5,4,8,3,7]
#output = 49
=end

def maxArea(height)
    l = 0
    r= height.length - 1

    res = 0
    while l < r
        area = (r-l) * [height[l],height[r]].min
        res = [res,area].max
        puts "area #{area}"
        puts "res #{area}"

        if height[l] < height[r]
            l+=1
        else
            r-=1
        end
    end

    return res

end

puts "max area of #{maxArea([1,8,6,2,5,4,8,3,7])}"

