puts "Введите сторону A треугольника"
side_a = gets.to_f
puts "Введите сторону B треугольника"
side_b = gets.to_f
puts "Введите сторону C треугольника"
side_c = gets.to_f

side_array = [side_a,side_b,side_c].sort

if (side_array.uniq.size > 1)
  if (side_array[2] == Math.sqrt(side_array[0]**2 + side_array[1]**2))
    puts "Треугольник прямоугольный"
    if (side_array[0] == side_array[1])
  	  puts "Треугольник равнобедренный"
    end
  end
end

