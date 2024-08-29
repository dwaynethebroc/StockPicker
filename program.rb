def stock_picker(market_array) 
  lowest_stock = 0
  highest_stock = 0
  stock_positions = []
  lowest_stock_index = 0
  highest_stock_index = 0
  maxprofit = 0


#create 2 loops that iterate through the market_array
#calculate profit for every combination
#if profit is greater than current max profit
#save positions of high and low stock and values
#after loops have finished push high and low stock positions to array
#return array and print profit calculation and max profit

market_array.each_with_index do |low_stock, low_index|
  market_array.each_with_index do |high_stock, high_index|
    profit = high_stock - low_stock

    if profit > maxprofit &&  low_index < high_index
      lowest_stock = low_stock
      highest_stock = high_stock
      lowest_stock_index = low_index
      highest_stock_index = high_index
      maxprofit = profit
    end
  end
end



  stock_positions.push(lowest_stock_index)
  stock_positions.push(highest_stock_index)

  puts "for a profit of $#{highest_stock} - $#{lowest_stock} == $#{maxprofit}"
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