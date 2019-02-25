#Author: Wenhao Lin
#Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
#Example:

#Input: [0,1,0,3,12]
#Output: [1,3,12,0,0]Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

#Example:

#Input: [0,1,0,3,12]
#Output: [1,3,12,0,0]

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zeros = nums.count(0)
    puts zeros
    nums.delete(0)
    zeros.times{nums << 0 }
end
