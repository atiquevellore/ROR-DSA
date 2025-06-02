
def isAnagram(t, s)
    return false if t.length != s.length
    
    countS = Hash.new(0)
    countT = Hash.new(0)

    for i in 0...s.length
        countS[s[i]] += 1
        countT[t[i]] += 1
    end

    countS.each do |char, count|
        return false if countT[char] != count
    end

    return true
end
 
puts isAnagram("anagram", "nagaram")
