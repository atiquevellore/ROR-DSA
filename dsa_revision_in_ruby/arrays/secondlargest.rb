def secondlargest(arr)
    largest = - Float::INFINITY
    secondlargest = - Float::INFINITY

    arr.each do |item|

        if item > largest
            secondlargest = largest
            largest = item
        end

        if item < largest && item > secondlargest
            secondlargest = item
        end
    end
    return secondlargest;
end
puts "second largest in arr is: #{secondlargest([12,35,1,10,34,1])}"
puts "second largest in negative arr is: #{secondlargest([-1,-2,-3])}"