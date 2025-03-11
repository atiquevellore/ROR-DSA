# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    beg = 0
    en  = s.length-1

    while  beg < en
         s[beg],s[en] =s[en],s[beg]
         beg+=1;
         en-=1
    end
    return s
end