def fizzbuzz(x)
 (1..100).each do |x|
    if x % 3 == 0 && x % 5 == 0
     puts "fizzbuzz"
    elsif x % 5 == 0 
      "buzz"
    elsif x % 3 == 0
      puts "fizz"
    else
      puts x
    end
  end
end

fizzbuzz(1..100)

