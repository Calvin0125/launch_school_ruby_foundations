def zip(array1, array2)
  result = []
  index = 0
  while index < array1.length
    result << [array1[index], array2[index]]
    index += 1
  end
  result
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]