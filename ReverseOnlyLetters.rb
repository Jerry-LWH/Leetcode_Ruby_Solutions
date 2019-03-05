#Author: Wenhao Lin
#Question: 
#Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.

 

#Example 1:

#Input: "ab-cd"
#Output: "dc-ba"

# @param {String} s
# @return {String}
def reverse_only_letters(s)
    left = 0
    right = s.length-1
    while left != right && left < right  do 
        puts left.to_s << right.to_s
        if s[left] =~ /[A-Za-z]/ && s[right] =~ /[A-Za-z]/
            temp = s[left]
            s[left]=s[right]
            s[right] = temp
        elsif s[left] =~ /[A-Za-z]/
            left -=1
        elsif s[right] =~ /[A-Za-z]/
            right += 1
        end
        left +=1
        right -=1
    end
    return s
end
