
def is_valid(s)
    stack = []
    map = { ")": "(", "]": "[", "}" : "{"}

    s.each_char do |char|
        if map[char]
            if stack && stack.last == map[char]
               stack.pop()
            else
                return false
            end
        else
            stack.push(char)
        end
    end

    res =  stack.length  == 0 ? true : false
end