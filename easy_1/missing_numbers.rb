def missing(numbers)
  result = []
  numbers.min.upto(numbers.max) do |num|
    result << num unless numbers.include?(num)
  end
  result
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []