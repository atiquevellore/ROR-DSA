def generate_parenthsis(n)

    stack = []
    res = []


    backtrack = lambda do |openC,closeC|
        if openC == n && closeC == 
            res << stack.join("")
            return
        end


        if openC < n
            stack << "("
            backtrack.call(openC + 1, closeC)
            stack.pop()
        end

        if closeC < openC
            stack << ")"
            backtrack.call(openC, closeC + 1)
            stack.pop()
        end

    end
    backtrack.call(0, 0) 
    res
end