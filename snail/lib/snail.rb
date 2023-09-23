require "pry"

class Snail

  # if you count the elements of the matrix you get n
  # matrix is nxn

  #start of the snail is the first element in matrix array
  #next would be index of n-1 in the next elements
# array_matrix = [
#     [1, 2, 3],
#     [4, 5, 6],
#     [7, 8, 9]
# ]
# require 'pry'; binding.pry
# snail(array_matrix)
# => [1, 2, 3, 6, 9, 8, 7, 4, 5]

  # def self.to_snail(matrix)
  #   snail_array=[]
  #   n = matrix.count
  #   n_count = n
  #   snail_array << matrix.first
  #   n_count - (n - 1)

  #   matrix.each do |neo|
  #     require 'pry'; binding.pry
  #     if neo == matrix[0]
  #     end
  #   end

  #   snail_array << matrix[1].last
  #   snail_array << matrix[n-1].reverse
  #   snail_array << matrix[1].first
  #   snail_array << matrix[1][1]

  #   snail_array.flatten
    # matrix.each do |neo|
    #   neo.each do |num|
    #     snail_array << num
    #   end
    #   require 'pry'; binding.pry

end