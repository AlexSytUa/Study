fibonacci = [0, 1]
fibonacci_arr = fibonacci.each { |k| fibonacci.push(k + fibonacci[-1]) if k + fibonacci[-1] < 100}
