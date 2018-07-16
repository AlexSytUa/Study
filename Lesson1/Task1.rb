puts "Введите ваше имя"
name = gets.chomp
puts "Введите ваш рост"
good_height = gets.to_f - 110

puts ( good_height < 0 ) ? "#{name}, Ваш вес уже оптимальный" : "#{name}, Ваш идеальный вес #{good_height}" 