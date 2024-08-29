def stock_picker(market_array) 
  lowest_stock = market_array[0]
  highest_stock = market_array[0]
  stock_positions = []
  lowest_stock_index = 0
  highest_stock_index = 0
  profit = 0


  market_array.each_with_index do |stock, index|
    if stock < lowest_stock
      lowest_stock = stock
      lowest_stock_index = index
    end
  end

  stock_positions.push(lowest_stock_index)
  stock_positions.push(highest_stock_index)

  profit = highest_stock - lowest_stock

  puts " for a profit of $#{highest_stock} - $#{lowest_stock} == $#{profit}"
  return stock_positions
end

test_array_1 = 10.times.map { rand(1..20) }
test_array_2 = 10.times.map { rand(1..20) }
test_array_3 = 10.times.map { rand(1..20) }





stock_picker([17,3,6,9,15,8,6,1,10])
# =>[1,4]  # for a profit of $15 - $3 == $12
stock_picker(test_array_1)

stock_picker(test_array_2)

stock_picker(test_array_3)