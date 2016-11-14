# class Luhn
#   def self.is_valid?(number)
#     self.new.is_valid?(number)  # initialize Luhn class as a valid or invalid number
#   end

#   def is_valid?(number)
#     sum = 0
#     number_array = number_to_array_of_string_integers(number)
#     number_array = reverse_to_start_right(number_array)
#     number_array = double_every_other(number_array)
#     number_array = subtract_9_if_over_9(number_array)

#     sum = number_array.inject(:+)

#     if (sum % 10) == 0
#      return true
#     else
#      return false
#     end
#   end

#   private

#   def subtract_9_if_over_9(number_array)
#     number_array.map {|num| (num > 9) ? num - 9 : num }
#   end

#   def double_every_other(number_array)
#     number_array.each_with_index.map { |digit, index| (index % 2 != 0) ? digit * 2 : digit }
#   end

#   def reverse_to_start_right(number_array)
#     number_array.reverse
#   end

#   def number_to_array_of_string_integers(number)
#     number.to_s.split("").map(&:to_i)
#   end
# end

module Luhn
  def self.is_valid?(number)

    number_array = number.to_s.split("").map(&:to_i)  # break credit card into indiv digits
    number_array.reverse!   # start from right - reverse digits
    number_array.map!.each_with_index { |digit, index| index.odd? ? digit * 2 : digit }  # double every second digit
    number_array.map!.each_with_index { |digit, index| (index.odd? && digit >= 10) ? digit - 9 : digit }  # if doubled digit is >= 10, subtract 9

    sum = number_array.inject(:+)  # sum all digits
    return (sum % 10 == 0) ? true : false  # if sum is divisible by 10, the number is valid

  end
end
