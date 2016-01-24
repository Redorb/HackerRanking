n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

sums = [0, 0, 0]
arr.each do |x|
    sums[0] += 1 if x > 0
    sums[1] += 1 if x < 0
    sums[2] += 1 if x == 0
end

puts (sums[0].to_f / arr.count)
puts (sums[1].to_f / arr.count)
puts (sums[2].to_f / arr.count)
