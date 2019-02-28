#You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water.

#Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land ce#lls).

#The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and hei#ght don't exceed 100. Determine the perimeter of the island.

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    perimeter = 0
    grid.each_with_index do |row,x| 
        row.each_with_index do |col, y| 
            if grid[x][y] == 1
            perimeter += 1 if x-1 < 0 || grid[x-1][y] == 0
            perimeter += 1 if x+1 > grid.size-1 || grid[x+1][y] == 0
            perimeter += 1 if y-1 < 0 || grid[x][y-1] == 0
            perimeter += 1 if y+1 > grid[0].size-1 || grid[x][y+1] == 0
            end
        end
    end
    perimeter
end
