// https://www.hackerrank.com/challenges/angry-professor

t = gets.strip.to_i
for a0 in (0..t-1)
    num_students,cancel_thres = gets.strip.split(' ')
    num_students = num_students.to_i
    cancel_thres = cancel_thres.to_i
    student_times = gets.strip.split(' ').map(&:to_i)
    total_on_time = 0
    student_times.each do |time|
        total_on_time += 1 if time <= 0
    end
    puts total_on_time < cancel_thres ? 'YES' : 'NO'
end
