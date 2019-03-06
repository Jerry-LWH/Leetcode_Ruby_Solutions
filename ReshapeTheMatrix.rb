#author: Wenhao Lin
#In MATLAB, there is a very useful function called 'reshape', which can reshape a matrix into a new one with different size but keep its original data.

#You're given a matrix represented by a two-dimensional array, and two positive integers r and c representing the row number and column number of the wanted reshaped matrix, respectively.

#The reshaped matrix need to be filled with all the elements of the original matrix in the same row-traversing order as they were.

#If the 'reshape' operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.


# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
    return nums if r*c > nums.size*nums[0].size
    temp = []
    new_matrix = Array.new(r){Array.new(c)}
    nums.each do |x|  
        x.each do |y| 
            temp.push y
        end
    end
    i=0
    new_matrix.each_with_index do |x,index1| 
        x.each_with_index do |num, index2| 
            new_matrix[index1][index2] = temp[i]
            i+=1
        end
    end
    new_matrix
end
