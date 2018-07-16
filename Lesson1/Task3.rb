puts "Введите сторону A треугольника"
a = gets.to_f
puts "Введите сторону B треугольника"
b = gets.to_f
puts "Введите сторону C треугольника"
c = gets.to_f

side_array = [a,b,c].sort

if( side_array[2] == Math.sqrt( side_array[0]**2 + side_array[1]**2 ) )
	puts "Треугольник прямоугольный"
	if( a == b ) || ( a == c ) || ( b == c )
		puts "Треугольник равнобедренный"
	end
end

