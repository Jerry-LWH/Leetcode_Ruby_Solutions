#Author: Wenhao Lin
#Question: #461 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
#          Given two integers x and y, calculate the Hamming distance.




# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    big = 0
    small = 0
    num = 0
    if x > y
        big = x
        small = y
    else
        big=y
        small=x
    end
    while big != 0 do 
        num+=1 if big&1 != small&1
        big=big >> 1
        small=small >>1
    end
    return num
end
