# @param {String[]} tokens
# @return {Integer}
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