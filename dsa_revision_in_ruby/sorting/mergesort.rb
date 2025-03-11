def mergeSort(arr)
    return arr if arr.length <= 1  # Base case: arrays with 0 or 1 elements are already sorted
  
    mid = (arr.length / 2.0).floor
    left = mergeSort(arr.slice(0, mid))
    right = mergeSort(arr.slice(mid, arr.length - mid))
  
    merge(left, right)
  end
  
def merge(left, right)
    sorted_arr = []
    while !left.empty? && !right.empty? do
      if left[0] < right[0]
        sorted_arr.push(left.shift)
      else
        sorted_arr.push(right.shift)
      end
    end
  
    # Concatenate the remaining elements
    sorted_arr.concat(left)
    sorted_arr.concat(right)
  
    sorted_arr
end
  
  puts "Sorted array is #{mergeSort([8, 3, 5, 4, 7, 6, 1, 2])}"