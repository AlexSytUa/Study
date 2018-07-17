puts "Введите сторону A"
side_a = gets.to_f
puts "Введите сторону B"
side_b = gets.to_f
puts "Введите сторону C"
side_c = gets.to_f

d = side_b**2 - 4 * side_a * side_c
d_sqrt = Math.sqrt( d ) 

if (d > 0)
  х1 = (-side_b + d_sqrt) / (2 * side_a)
  x2 = (-side_b - d_sqrt) / (2 * side_a)
  puts "D = #{d}; x1=#{х1}; x2=#{x2}"
elsif (d == 0)
  х1 = -side_b / (2 * side_a)
  puts "D = #{d}; x1=#{х1}"
else
  puts "D = #{d}; Корней нет"
end
