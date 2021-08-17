# Finds the smallest value in an array
#Pseudocode

# while array.count > 0
#   iterate through array
#     find_smallest element in original array
#       find and return smallest value in array and return index number
#     remove element from original array
#     add element to new array and return this modified array

def find_smallest(array)
  index_of_smallest = 0
  smallest_value = array[0]
  array.each_with_index do |value, index|
    if value < smallest_value
      smallest_value = value
      index_of_smallest = index
    end
  end
  index_of_smallest
end

def selection_sort(array)
  ordered_array = []
  while array.length > 0
    smallest_index = find_smallest(array)
    ordered_array << array.slice!(smallest_index)
  end
  ordered_array
end

print selection_sort([1,4,5,67,1000,3,2,55,0,-10])

