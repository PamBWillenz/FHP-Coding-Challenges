cells = [ [0, 0, 0, 0],
          [0, 1, 0, 0],
          [0, 0, 0, 1],
          [0, 0, 0, 0]
      ]

# cells.each do |row|
#   row.each do |col|
#     print col.to_s + " "
#     end
#     puts
#   end  
 
# OR

cells.each do |row|
  puts row.join(',')
end