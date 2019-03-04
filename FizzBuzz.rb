# coding: utf-8
#Author: Wenhao Lin
#Question: Write a program that outputs the string representation of numbers from 1 to n.

#But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”.
#For numbers which are multiples of both three and five output “FizzBuzz”.

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    str = []
    (1..n).each do |a| 
        if a%3==0 && a%5==0
            str.push "FizzBuzz"
        elsif a%5 == 0
            str.push"Buzz"
        elsif a%3==0 
            str.push "Fizz"
        else
            str.push a.to_s
        end
    end
    return str
end
