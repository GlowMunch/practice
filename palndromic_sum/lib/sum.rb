require "pry"

class Sum

  attr_reader

  def initialize()
  end

# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers.
# For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.
# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.
# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.
# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.


#take each number
#make into an of each number in set, so 500 would be  [5, 0, 0]
#then .reverse the array

#bring back together as whole number
#add new value to original value
#check if its over 1000

#turn into an array
#example 1000 would be [1,0,0,0]

#check if index 0 and index .last are equal

#if there is an index position 3
#check if index 1 and 2 are equal


  def palendrome(numbers)
    array = []
    numbers.each do |number|
      if array.count < 25
        inverse = number.to_s.chars.reverse.join.to_i
        sum = (number + inverse)
        sum_string = sum.to_s.chars
        if sum.between?(1000, 10000) && ((sum_string[0] == sum_string[3]) && (sum_string[1] == sum_string[2]))
          array << number
        end
      end
    end
    array
  end
end
