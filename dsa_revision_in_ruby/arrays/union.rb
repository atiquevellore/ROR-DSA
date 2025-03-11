

def union(arr1,arr2)
    map = {}
     res = []
    for i in 0...arr1.length
        if !map[arr1[i]]
            res.push(arr1[i])
            map[arr1[i]] = i
        end
    end

    for i in 0...arr2.length
        if !map[arr2[i]]
            res.push(arr2[i])
            map[arr2[i]] = i
        end
    end

    puts "map #{map}"
    puts "arr #{res.sort}"
    return map.size
end

puts union([1,3,4,5,7],[2,3,5,6])