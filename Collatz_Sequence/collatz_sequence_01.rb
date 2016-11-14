
# using recursion
def collatz(num, arr = [])   
  return arr if arr.unshift(num)[0] == 1
  num.even? ? collatz(num / 2, arr) : collatz(num * 3 + 1, arr)
end

puts collatz(1000)
puts collatz.max(1000)

# using iterative

def collatz(num, arr = [])
  while num != 1
    arr << num
    num = num.even? ? num / 2 : num * 3 + 1   
  end
  arr.push(1)
end

puts collatz(100)