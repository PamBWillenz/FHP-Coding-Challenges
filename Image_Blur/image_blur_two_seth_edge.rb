# image = [[0,0,0], 
#          [0,1,0],  
#          [0,0,0]] 

image = [[0,0,0], 
         [0,0,0],  
         [1,0,0]] 

# image = [[0,0,0], 
#          [0,1,0],  
#          [0,0,1]] 

def print_image(image)
  image.each do |row|
    row.each do |cell|
      print cell
    end
    puts
  end
  puts "-------"
end

def blur(image, r, c)
  first_r = image[0]
  
  if r > 0
    image[r-1][c] = 2 #top cell
  end

  if c != first_r.length - 1
    image[r][c+1] = 2 #right cell
  end

  if r != image.length - 1
    image[r+1][c] = 2 #bottom cell
  end
  if c > 0
    image[r][c-1] = 2 #left cell
  end
end

def loop_img(image)
  image.each_with_index do |row, r|
    row.each_with_index do |cell, c|
      if cell == 1
        blur(image, r, c)
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