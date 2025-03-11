# quick sort

def quickSort(arr)
    if arr.length  <= 1
        return arr
    end

    pivot = arr[0]
    left = []
    right = []

    for i in 1..arr.length-1
        if arr[i] < pivot
            left << arr[i]
        else
            right << arr[i]
        end
    end

    return [*quickSort(left),pivot,*quickSort(right)]
end

puts "sorted array #{quickSort([8,3,5,4,7,6,1,2])}"

# time complexity - n logn 

without recursion
def quick_Sort(arrr)
    return arr if arr.empty?

    
end