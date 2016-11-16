def collatz(arr, n)
  if n == 1
    arr << n
    return arr
  elsif n % 2 == 0
    n = n / 2
    arr << n
    collatz(arr, n)
  else
    n = (3 * n) + 1
    arr << n
    collatz(arr, n)
  end
end

puts "#{collatz([], 1000000).join(', ')}"
puts collatz([], 1000000).length