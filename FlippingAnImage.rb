#Author: Wenhao Lin
#Question: Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.
#
#To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].
#
#To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].

# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
    a.each_with_index do |row,i| 
        new_row = row.reverse
        new_row.each_with_index {|num,j| new_row[j]==0? new_row[j]=1:new_row[j]=0}
        a[i] = new_row
    end
end
