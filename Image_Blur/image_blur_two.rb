class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def blur(row_index,col_index)
    if row_index != 0
      image[row_index - 1][col_index] = 1
    end
    if col_index != 0
      image[row_index][col_index - 1] = 1
    end

    first_row = image[0]
    if col_index != first_row.length - 1 #determines size of all rows
      image[row_index][col_index + 1] = 1
    end
    if row_index != image.length - 1
      image[row_index + 1][col_index] = 1
    end
  end

  def transform
    image_ones = []
    @image.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        if cell == 1
          image_ones << [row_index, col_index]
        end
      end
    end
    image_ones.each do |pair|
      row_index, col_index = pair
      blur(row_index, col_index)
    end
  end

  def output_image
    @image.each do |row|
      row.each do |cell| #instead use this -- puts row.join
        print cell
      end
      puts
    end
     
  end 
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 0],
  [0, 0, 0, 0]
])

# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 0, 1, 0],
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0]
# ])

# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0]
# ])



image.transform
image.output_image