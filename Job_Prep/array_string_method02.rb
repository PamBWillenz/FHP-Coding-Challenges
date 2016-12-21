array = [1,'all',4,53,'Cats',24,'Bilbo Swaggins',12,74,'Wowwie',23,60,13,46,'That is amazing']

def letter_to_number(letter)
  if /[[:upper:]]/.match(letter)
    number = (letter.ord - 38)
  else
    number = (letter.ord - 96)
  end
  return number
end

def string_to_number(letters)
  count = 0

  letters.split('').each do |letter|
    num = letter_to_number(letter)
    count += num
  end
  return count
end

def transform_array(array)
  transformed_array = []
  array.each do |item|
    if item.is_a? Integer
      transformed_array << item
    else
      num = string_to_number(item)
      transformed_array << num
    end
  end
  return transformed_array
end

def array_sum(array)
  transformed_array = transform_array(array)
  transformed_array.inject(:+)
end

puts letter_to_number('a')
puts letter_to_number('Z')
puts string_to_number('aa')
p transform_array(array)
puts array_sum(array)

