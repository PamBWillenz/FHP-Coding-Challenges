require 'matrix'    

class Matrix
  def el(r,c)
    if r < 0 || r >= row_count || c < 0 || c >= column_count
      0
    else
      self[r,c]
    end
  end

  def transform
    Matrix.build(row_count, column_count) { |r,c|
      [el(r,c), el(r-1,c), el(r+1,c), el(r,c-1), el(r,c+1)].max }
  end
end

matrix = Matrix.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 0],
  [0, 0, 0, 0]
])
matrix.transform
