

def mergeIntervals(intervals)
    intervals.sort_by! { |item| item[0]}
    output = [intervals[0]]

    intervals[1..-1].each do |current|
        start ,ending =  current
        puts "start,ending #{start} #{ending}"
        last_end = output.last[1]
        if start <= last_end
            output.last[1] = [last_end,ending].max
        else
            output << [start,ending]
        end

    end
    output
end

puts mergeIntervals([[1,4] ,[4,5]])