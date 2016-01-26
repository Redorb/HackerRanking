require 'set'
str_to_test = gets.downcase.split('')
set = Set.new
str_to_test.each { |c|
    if c =~ /[[:alpha:]]/
        set.add(c)
    end
}

if set.size == 26
    puts 'pangram'
else
    puts 'not pangram'
end
