def fact(n)
  # 4! = 4 * 3 * 2 *1

  if n == 0
    return 1
  else
    return n * fact(n - 1)
  end
end

puts fact(100)

def fact2(n)

  acc = 1 

  while n != 0
    acc = acc * n
    n = n - 1
  end

  return acc
end

puts fact2(4)