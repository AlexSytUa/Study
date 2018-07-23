puts "Enter day"
input_day = gets.to_i
puts "Enter month"
input_month = gets.to_i
puts "Enter year"
input_year = gets.to_i

days_arr = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
calc_days = input_day

is_leap_year = (input_year % 400 == 0) || (input_year % 4 == 0 && input_year % 100 != 0) 

days_arr[1] = 29 if is_leap_year

days_arr.slice(0, input_month - 1).each {|days| calc_days += days}

puts calc_days

