def step(min, max, step)
  while min <= max
    yield min
    min += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }