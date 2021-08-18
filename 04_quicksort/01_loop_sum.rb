def sum(array)
  total = 0
  while !array.empty?
    total += array.slice!(0)
  end
  total
end


print sum([1, 2, 3, 4, 5])
