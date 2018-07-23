products_hash = {}
loop do
  puts 'Enter product name'
  input_name = gets.chomp
  break if input_name == 'стоп' || input_name == 'stop'
  puts 'Enter the price of the item'
  input_price = gets.to_f
  puts 'Enter the quantity of the item'
  input_quantity = gets.to_f

  products_hash[input_name] = { price: input_price, quantity: input_quantity, total: input_price * input_quantity }

end

puts products_hash.inspect

total_price = 0

products_hash.each { |procuct, hash| total_price += hash[:total] }

puts "Total in cart: #{total_price}"


