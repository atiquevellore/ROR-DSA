
def remove_duplicates(arr)
    i = 0
    for j in 1..arr.length-1
       if arr[j] != arr[i]
          arr[i+1] = arr[j]
          i+=1
       end
    end
    res = arr.slice(0,i)
    return res
end
puts "removed dups #{remove_duplicates([0,0,1,1,1,2,2,3,3,4])} "