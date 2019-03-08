# coding: utf-8
#Author: Wenhao Lin
#Question: You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.

#The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.


# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
    answer_array =[]
    nums1.each do |num|
        index = nums2.index(num)
        find = false
        while index<nums2.size do
            if nums2[index] > num 
                answer_array.push nums2[index]
                find = true
                break
            end
            index +=1
        end
        answer_array.push -1 if !find
    end
    return answer_array
end
