def sum(array)
  if array.empty?
    total = 0
  else
    total = array.slice!(0) + sum(array)
  end
  total
end


print sum([1, 2, 3, 4, 5])
