n = gets.strip.to_i
count = 1
n.times do
    print " " * (n-count)
    puts "#" * count
    count+=1
end
