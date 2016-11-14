# class Image
#   def initialize(image)
#     @image = image
#   end

#   def blur (row_index, column_index)
#       if @image[row_index][column_index] == 1
#         @image_copy[row_index][column_index] = 1
#         @image_copy[row_index + 1][column_index] = 1
#         @image_copy[row_index - 1][column_index] = 1
#         @image_copy[row_index][column_index + 1] = 1
#         @image_copy[row_index][column_index - 1] = 1
#       end
#     end

#   def set_zero(row_index, column_index)
#      @image_copy[row_index][column_index] = 0
#   end  

#   def transform
#     @image_copy = Array.new(@image.size) {Array.new(@image.first.size)}
#     @image.each_with_index do |row, row_index|
#       row.each_with_index do |cell, column_index|
#         set_zero(row_index,column_index)
#       end
#     end
#     @image.each_with_index do |row, row_index|
#       row.each_with_index do |cell, column_index|
#         transform(row_index,column_index)
#       end
#     end
#     @image = @image_copy
#   end
  
#   def output_image
#     @image.each_with_index do |row, row_index|
#       puts row.join('')
#     end
#   end
# end

# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0],
#   [0, 0, 0, 0],
#   [1, 0, 0, 0],
#   [0, 0, 0, 0]
# ])
# image.transform
# image.output_image

class Image
  def initialize(rows)
    @rows = rows
  end

  def blur
    @rows_copy = Array.new(@rows.size) {Array.new(@rows.first.size)}
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        set_zero(row_index,column_index)
      end
    end
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        blur_location(row_index,column_index)
      end
    end
    @rows = @rows_copy
  end
  def set_zero(row_index, column_index)
     @rows_copy[row_index][column_index] = 0
  end
  def blur_location (row_index, column_index)
    if @rows[row_index][column_index] == 1
      @rows_copy[row_index][column_index] = 1
      @rows_copy[row_index + 1][column_index] = 1
      @rows_copy[row_index - 1][column_index] = 1
      @rows_copy[row_index][column_index + 1] = 1
      @rows_copy[row_index][column_index - 1] = 1
    end
  end
  def output_image
    @rows.each_with_index do |row, row_index|
      puts row.join('')
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
])

image.blur
image.output_image
