n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

sum_1 = 0
sum_2 = 0
for i in 0..n-1 do
    sum_1 += a[i][i]
    sum_2 += a[i][n-i-1]
end
puts (sum_1 - sum_2).abs
