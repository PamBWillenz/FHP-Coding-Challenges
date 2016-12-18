 array = [1,'all',4,53,'Cats',24,'Bilbo Swaggins',12,74,'Wowwie',23,60,13,46,'That is amazing']

  def str_num_combination(array1, array2)
    
      new_array=[]
      count = 0
      array1.each do |numbers|
        array2.each do |letters|
          if numbers
            count[numbers] += 1
          else
            letter_value = letters.ord - 96 || letters.upcase.ord - 38 
            array2 = letter_value
            count[letter] += 1
          new_array.push(array1 + array2)
        end

        end
      end
      return new_array
  end

 array1 = [1, 4, 53, 24, 12, 74, 23, 60, 13, 46]
 array2 = ['all', 'Cats', 'Bilbo Swaggins', 'Wowwie', 'That is amazing']  
# puts (str_num_combination(array1, array2))

array2 = array2.map {|ch| ch.ord - 'a'.ord }
array1 = array1.inject(:+)
puts array1
puts array2


# def shift_char(c, base, offset)
#   (((c.ord - base) + offset) % 26 + base).chr
# end

# def cipher(s, offset)
#   s.chars.map do |c|
#     case c
#     when 'a'..'z'
#       shift_char(c, 'a'.ord, offset)
#     when 'A'..'Z'
#       shift_char(c, 'A'.ord, offset)
#     else
#       c
#     end
#   end.join
# end

# cipher_text = cipher('Now is the time for all good men...', 13)
# p cipher_text       # "Abj vf gur gvzr sbe nyy tbbq zra..."
# original_text = cipher(cipher_text, 13)
# p original_text     # "Now is the time for all good men..."

# def caesar(string, shift_factor)
#   alphabet = ('a'..'z').to_a
#   string.downcase.tr(alphabet.join, alphabet.rotate(shift_factor).join)
# end

