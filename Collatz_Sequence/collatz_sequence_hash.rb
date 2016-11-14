h = Hash.new { |hash, n| hash[n] = 1+(n.odd? ? hash[3 * n+1] : hash[n/2])}

h[1] = 1

puts h[100] # => 26
puts h[1000000] # => 153


