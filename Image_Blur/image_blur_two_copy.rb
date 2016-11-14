class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  def transform #changes adjacent a 1's adjacent 0's into 1
    copied = input_image.map(&:copy)

    #scan original image for 1; map crosses into copy if found
    input_image.each.with_index do |row, row_index|
      row.each.with_index do |cell, col|
        if cell == 1
          copied[row_index][col+1] = 1 unless col+1 >= row.length #copy right
          copied[row_index+1][col] = 1 unless row_index+1 >= copied.length # copy down
          copied[row_index][col-1] = 1 unless col.zero? # copy left
          copied[row_index-1][col] = 1 unless row_index.zero? #copy up
        end
      end
    end
    copied
  end

  def blur(input_image) #should call transform iteratively n times
    blurred = Image.new(input_image)
    n.times do
      blurred = blurred.transform
    end
    blurred
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
image.transform
image.output_image