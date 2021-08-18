def max(array)
  if array.empty?
    max = 0
  else
    first_element = array.slice!(0)
    max_of_remaining_elements = max(array)
    if first_element > max_of_remaining_elements
      max = first_element
    else
      max = max_of_remaining_elements
    end
  end
end


print max([1, 2, 31, 4, 5, 678, 200])
