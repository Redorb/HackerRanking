numCases = gets
while str = gets do
    previous_char = ""
    deletions = 0
    str.each_char { |c|
        if c == previous_char
            deletions += 1
        else
            previous_char = c
        end
    }
    puts deletions
end
