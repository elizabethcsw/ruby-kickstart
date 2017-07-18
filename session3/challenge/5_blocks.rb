# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
def spiral_access(arrays, iteration=0, &block)
  y_max = arrays.length - 1
  x_max = arrays.first.length - 1

  # base step
  return if y_max/2 < iteration || x_max/2 < iteration

  # top row
  iteration.upto x_max-iteration do |x|
    block.call arrays[iteration][x]
  end

  # right column
  (iteration + 1).upto y_max-iteration do |y|
    block.call arrays[y][x_max-iteration]
  end

  # bottom row
  (x_max - 1 - iteration).downto iteration do |x|
    block.call arrays[y_max-iteration][x]
  end

  # left column
  (y_max - 1 - iteration).downto iteration+1 do |y|
    block.call arrays[y][iteration]
  end

  # recursive step
  spiral_access arrays, iteration+1, &block
end



=begin

  height=[]
  h=2d_array.length-1
  (0..h).each{|x| height<<x}

  weight=[]
  w=2d_array[0].length-1
  (0..h).each{|x| weight<<x}

  two_d[0][0]
  two_d[0][1]
  two_d[0][2]
  two_d[0][3]
  two_d[0][4]
  two_d[1][4]
  two_d[2][4]
  two_d[3][4]
  two_d[4][4]
  two_d[4][3]
  two_d[4][2]
  two_d[4][1]
  two_d[4][0]
  two_d[3][0]
  two_d[2][0]
  two_d[1][0]
  two_d[1][1]
  two_d[1][2]
  two_d[1][3]
  two_d[2][3]
  two_d[3][3]
  two_d[3][2]
  two_d[3][1]
  two_d[2][1]
  two_d[2][2]


two_d = [
[ 1,  2,  3,  4, 5],
[16, 17, 18, 19, 6],
[15, 24, 25, 20, 7],
[14, 23, 22, 21, 8],
[13, 12, 11, 10, 9],
]
two_d.size
two_d.length
two_d[0][1]
two_d2 = [
[ 1,  2,  3, 4],
[16, 17, 18, 2],
[15, 24, 25, 1],
]
two_d2[0].length

=end
