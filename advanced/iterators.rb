def factorial(n)
  return 1 if n == 0
  n * factorial(n-1)
end

factorials = Enumerator.new do |y|
  n = 0
  loop do
    y << factorial(n)
    n += 1
  end
end

7.times { |number| puts factorials.next }
puts "next iteration"
7.times { |number| puts factorials.next }
puts "after rewind"
factorials.rewind
7.times { |number| puts factorials.next }
