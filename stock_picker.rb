def best_stock(stocks)
  best_buy = [0, 1]
  i = 0
  while i < stocks.length - 1 do
    j = i + 1
    max_index = i
    while j < stocks.length - 1 do
      if stocks[j] - stocks[i] > stocks[best_buy[1]] - stocks[best_buy[0]]
        best_buy = [i, j]
      end
      j += 1
    end
    i += 1
  end
  best_buy
end

p best_stock([17,3,6,9,15,8,6,1,10])