#Author: Wenhao Lin
#We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

#A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

#Return a list of all uncommon words. 

#You may return the list in any order.

# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
    a=a.split(" ")
    b=b.split(" ")
    answer = []
    a.each do |word|
        if a.count(word)==1 && b.count(word) == 0
            answer.push word
        end
    end
    b.each do |word|
        if b.count(word)==1 && a.count(word) == 0
            answer.push word
        end
    end
    answer
end
