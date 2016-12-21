def str_num_combination(array)
  count = 0

  array.each do |item|
    if item.is_a? Integer
      count += item
    else
      letters = item.split('')
      letters.each do |letter|
        if letter != ' '
          if /[[:upper:]]/.match(letter)
            count += (letter.ord - 38)
          else
            count += (letter.ord - 96)
          end
        end
      end
    end
  end
  return count
end


puts str_num_combination([1,'all',4,53,'Cats',24,'Bilbo Swaggins',12,74,'Wowwie',23,60,13,46,'That is amazing'])

