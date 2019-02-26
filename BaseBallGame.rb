#Author: Wenhao Lin
#You're now a baseball game point recorder.

#Given a list of strings, each string can be one of the 4 following types:

#Integer (one round's score): Directly represents the number of points you get in this round.
#"+" (one round's score): Represents that the points you get in this round are the sum of the last two valid round's points.
#"D" (one round's score): Represents that the points you get in this round are the doubled data of the last valid round's points.
#"C" (an operation, which isn't a round's score): Represents the last valid round's points you get were invalid and should be removed.
#Each round's operation is permanent and could have an impact on the round before and the round after.

# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
    sum = 0
    new_array = []
    ops.each_with_index do |string,index| 
        if is_number? string 
            new_array << string.to_i
        elsif string == "+"
            num = new_array[new_array.size-1]+new_array[new_array.size-2]
            new_array << num
        elsif string == "D"
            num = new_array[new_array.size-1]*2
            new_array << num
        elsif string == "C"
            new_array.delete_at(new_array.size-1)
        end
    end
    new_array.sum
end

def is_number? string
  true if Float(string) rescue false
end

