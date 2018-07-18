puts "Введите сторону A треугольника"
side_a = gets.to_f
puts "Введите сторону B треугольника"
side_b = gets.to_f
puts "Введите сторону C треугольника"
side_c = gets.to_f

side_array = [side_a, side_b, side_c].sort

is_triangle = side_array[2] == Math.sqrt(side_array[0]**2 + side_array[1]**2)
is_rectangular = side_array.uniq.size > 1
is_isosceles = side_array[0] == side_array[1]

if(is_triangle && is_rectangular)
  puts "Треугольник прямоугольный"
  puts "Треугольник равнобедренный" if is_isosceles 
end
