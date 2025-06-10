# @param {String[]} tokens
# @return {Integer}
# order matters in RPN for -,/ 
# so we need to pop the last two elements and then push the result back
# for +,*, we can just pop the last two elements and push the result back
# for /, we need to convert to float and then convert back to int
# for -, we need to pop the last two elements and then subtract the first popped from the second popped
def eval_rpn(tokens)
    stack = []
    tokens.each do |chr|
      if chr == "+"
         stack.push( stack.pop().to_i + stack.pop().to_i)
      elsif chr == "-"
           a,b = stack.pop().to_i, stack.pop().to_i
           stack.push(b-a)
      elsif chr == "*"
           stack.push( stack.pop().to_i * stack.pop().to_i)
      elsif chr == "/"
           a,b = stack.pop().to_i, stack.pop().to_i
           stack.push((b.to_f / a.to_f).to_i)
      else
         stack.push(chr.to_i)
      end
    end
    return stack[0]
end
eval_rpn(["2", "1", "+", "3", "*"])

