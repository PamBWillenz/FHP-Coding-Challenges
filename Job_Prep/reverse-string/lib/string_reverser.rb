# module StringReverser
#   def self.reverse(string)
#     reversed_string = ''

#     i = 0
#     while i < string.length
#       reversed_string = string[i] + reversed_string
#       i += 1
#     end

#     return reversed_string
#   end
# end

  def reverse(string)
    string = string.split('')
    reversed_string = []

    string.each do |char|
      reversed_string.unshift(char)
    end

    return reversed_string.join('')
  end

puts reverse('')
puts reverse('hello')
puts reverse('I want to get better at this')

# module StringReverser
# 	def self.reverse(string)
# 	 reversed = []
#    array_string = string.split("")

#    until array_string.empty?
#     reversed << array_string.pop
#     end
#   reversed.join
#   end
# end

# Reverse a string with an array
  # def self.reverse(string)
  #   str = string.split('') # creates an array
  #   reversed = []

  #   string.size.times { reversed << str.pop }

  #   reversed.join
  # end


# #Reverse a string without an array
#   def self.reverse(string)
#     str = string
#     reversed = '' 

#     string.each_char { reversed << str.slice(-1) }

#     reversed
#   end
# end

# Reverse a string with recursion
#   def self.reverse(string)
#     str = string
#     string.size < 2 ? str : str[-1] +  self.reverse(str[1..-2]) + str[0]
#   end
# end

  
