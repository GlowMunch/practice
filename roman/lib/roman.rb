require "pry"
class Roman
  attr_reader :roman_array,
  :numbers

  def initialize
    @numbers = {
      'M' => 1000,
      'CM' => 900,
      'D' => 500,
      'CD' => 400,
      'C' => 100,
      'XC' => 90,
      'L' => 50,
      'XL' => 40,
      'X' => 10,
      'IX' => 9,
      'V' => 5,
      'IV' => 4,
      'I' => 1
    }
  end


  def to_numerals(num)
    roman_array = []
    new_num = num
    numbers.each do |roman, digits|
      if new_num == num
        n = num / digits
        n.times do
          roman_array << roman
        end
        new_num = num - (n * digits)
      else
        if new_num / digits
          n = new_num / digits
          n.times do
            roman_array << roman
          end
          new_num = new_num - (n * digits)
        end
      end
    end
    roman_array.join
  end
end