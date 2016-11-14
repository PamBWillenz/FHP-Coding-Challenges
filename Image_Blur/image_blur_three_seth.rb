# image = [[0,0,0], 
#          [0,1,0],  
#          [0,0,0]] 

# image = [[0,0,0], 
#          [0,0,0],  
#          [1,0,0]] 

image = [[0,0,0], 
         [0,1,0],  
         [0,0,0]] 

def print_image(image)
  image.each do |row|
    row.each do |cell|
      print cell
    end
    puts
  end
  puts "-------"
end

def blur(image, r, c, distance)

  image_height = image.length
  image_width = image[0].length


  start_row = r - distance
  if start_row < 0
    start_row = 0
  end

  start_col = c - distance
  if start_col < 0
    start_col
  end

  end_row = r + distance
  if end_row > image_height - 1
    end_row = image_height - 1
  end

  end_col = c + distance
  if end_col > image_width - 1
    end_col = image_width - 1
  end

  for i in (start_row..end_row)
    for j in (start_col..end_col)
      if within_manhatten_distance?(i, j, r, c, distance)
        image[i][j] = 2
      end
    end
  end



end

#|x| + |y|
def within_manhatten_distance?(r1, c1, r2, c2, distance)
  (r1 - r2).abs + (c1 - c2).abs <= distance
end

def loop_img(image)
  image.each_with_index do |row, r|
    row.each_with_index do |cell, c|
      if cell == 1
        blur(image, r, c, 1)
      end
    end
  end
end

def change_twos(image)
  image.each_with_index do |row, r|
    row.each_with_index do |cell, c|
      if cell == 2
        image[r][c] = 1
      end
    end
  end
end

print_image(image)
loop_img(image)
print_image(image)
change_twos(image)
print_image(image)