char_set_1 = gets.chomp.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
char_set_2 = gets.chomp.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
count = 0

char_set_1.each  {|k, v|
    count += (v - char_set_2[k]) if v > char_set_2[k]
}

char_set_2.each  {|k, v|
    count += (v - char_set_1[k]) if v > char_set_1[k]
}

puts count
