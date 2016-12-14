def method(array)
  p array.reject {|element| array.count(element) > 1 }
end

ray = [1,1,2,2,7,8,9,9,9,4,2,2,2,1,1,3,2,20,40]
method(ray)
