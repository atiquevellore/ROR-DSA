

def longest_common_prefix(str)

    prefix = str[0]

    for i in 1...strs.length
        while strs[i].index(prefix)!=0
            prefix = prefix[0...-1]
            return " " if prefix.empty?
        end
    end

    prefix