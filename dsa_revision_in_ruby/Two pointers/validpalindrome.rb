=begin
input
s = "A man, a plan, a canal: Panama"
output
true
=end


def is_palindrome(s)
    alphanumeric_str = str.gsub(/[^a-zA-Z0-9]/,'').downcase
    s == alphanumeric_str.reverse
end

is_palindrome("A man, a plan, a canal: Panama")

is_palindrome("race a car")