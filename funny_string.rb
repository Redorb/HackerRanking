def funny_codepoints? str_cps, rev_str_cps, pos
    (str_cps[pos+1] - str_cps[pos]).abs == (rev_str_cps[pos+1] - rev_str_cps[pos]).abs
end

num_of_test_cases = gets
while (str = gets) do
    rev_str = str.reverse.strip.codepoints
    str = str.strip.codepoints
    num_of_codepoints = 0
    for i in 0..str.size - 2
        if funny_codepoints? str, rev_str, i
            num_of_codepoints+=1
        end
    end
    
    if num_of_codepoints == str.size - 1
        puts 'Funny'
    else
        puts 'Not Funny'
    end
end
