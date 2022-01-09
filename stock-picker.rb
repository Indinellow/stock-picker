def stock_picker(stonks)
buy_day=0
sell_day=0
buy_price=0
sell_price=0
stonks.each_with_index do |buy_element, buy_index|
  stonks.each_with_index do |sell_element,sell_index|
    if buy_index<sell_index && sell_price-buy_price<sell_element-buy_element
      buy_day=buy_index
      buy_price=buy_element
      sell_day=sell_index
      sell_price=sell_element
    end 
  end
end 
return [buy_day,sell_day]
end 


p stock_picker([17,3,6,9,15,8,6,1,10])