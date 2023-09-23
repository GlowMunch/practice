require "pry"

class Nums

  # def self.two_sum(nums, target)
  #   until total == target do
  #     nums.each do |num|
  #       numbers = nums.dup
  #       dex = []
  #       total = 0
  #       until total == target || numbers.count == 0 do
  #         total = (num + numbers[-1])
  #         if total != target
  #           numbers.delete_at(-1)
  #         end
  #       end
  #     end
  #     require 'pry'; binding.pry
  #     dex = [nums.index(num), nums.index(numbers[-1])]
  #   end
  # end


  def self.two_sum(nums, target)
    # Create a hash table to store the numbers and their indices
    num_indices = {}

    nums.each_with_index do |num, index|
      # Calculate the complement of the current number with respect to the target
      complement = target - num

      # If the complement is in the hash table, return the indices of the two numbers
      if num_indices.key?(complement)
        return [num_indices[complement], index]
      end

      # Otherwise, store the current number and its index in the hash table
      num_indices[num] = index
    end

    # If no solution is found, return an empty array or raise an error as needed
    raise ArgumentError, "No solution found"
  end
end