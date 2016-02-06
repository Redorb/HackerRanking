# https://www.hackerrank.com/challenges/gem-stones
numRocks = gets.to_i
gems = gets.chomp.chars.uniq
(numRocks - 1).times do 
    gems = gets.chomp.chars.uniq & gems
end
puts gems.length
