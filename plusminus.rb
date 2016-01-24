n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

pos = 0
neg = 0
zero = 0

arr.each do |x|
    if x > 0
        pos+=1
    elsif x < 0
        neg+=1
    else
        zero+=1
    end   
end

puts (pos.to_f / arr.count)
puts (neg.to_f / arr.count)
puts (zero.to_f / arr.count)
