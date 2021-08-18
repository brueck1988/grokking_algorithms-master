def sum(array)
  if array.empty?
    count = 0
  else
    array.slice!(0)
    count = 1 + sum(array)
  end
end


print sum([1, 2, 3, 4, 5])
