#input [2,7,11,15] 9
#output [0,1]

def twosum(arr,target)
    previousvalues = {}
    arr.each_with_index do |num,index|
       neededvalue = target - num
       index2 = previousvalues[neededvalue]
       if index2
          return [index2,index]
       else
          previousvalues[num] = index
       end

    end
end

puts "output: #{twosum([2,7,11,15], 9)} "