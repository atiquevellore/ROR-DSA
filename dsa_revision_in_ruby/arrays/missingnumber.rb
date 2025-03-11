def missingnumber(arr)
    sum_arr = 0
    n= arr.length
    for i in arr
        sum_arr+=i
    end
    return n*(n+1)/2 - sum_arr
end
puts missingnumber([9,6,4,2,3,5,7,0,1])