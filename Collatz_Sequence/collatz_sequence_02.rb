def collatz_length
    value = self   
     
    # 0 and 1 return self as length
    return value if value <= 1
     
    length = 1   
    while (value != 1)      
      if (value % 2 == 0)
        value /= 2
      else
        value = 3 * value + 1       
      end
      length += 1     
    end
     
    length
end

 
starting_number, longest_chain = 1, 0
 
1.upto(1000000) { |n|  
  l = n.collatz_length
  starting_number, longest_chain = n, l if l > longest_chain
}
 
puts starting_number
puts longest_chain
 
#puts “Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"

