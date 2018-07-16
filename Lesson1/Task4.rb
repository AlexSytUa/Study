puts "Введите сторону A"
a = gets.to_f
puts "Введите сторону B"
b = gets.to_f
puts "Введите сторону C"
c = gets.to_f

d = b**2 - 4 * a * c

if( d > 0)
	х1 = ( -b + Math.sqrt( d ) ) / ( 2 * a )
	x2 = ( -b - Math.sqrt( d ) ) / ( 2 * a )
	puts "D = #{d}; x1=#{х1}; x2=#{x2}"
elsif( d == 0 )
	х1 = ( -b + Math.sqrt( d ) ) / ( 2 * a )
	puts "D = #{d}; x1=#{х1}"
else
	puts "D = #{d}; Корней нет"
end

