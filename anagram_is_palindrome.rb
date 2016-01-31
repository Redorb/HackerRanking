string = gets.chomp 

found = 0
char_hash = Hash.new(0)
string.each_char { |c|
    char_hash[c] += 1
}

num_odd_occ = 0
char_hash.each do |key, value|
    num_odd_occ += 1 if value.odd?
end

found = 1 if num_odd_occ <= 1

if found == 1
    puts "YES"
else
    puts "NO"
end

