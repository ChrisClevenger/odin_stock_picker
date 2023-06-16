## Implement Method w/ input of array 

def stock_picker(array) 

    ## Create empty variables

    max_profit = 0
    buy_index = 0
    sell_index = 0

    ## Iterate over each value in [array]

    array.each_with_index do |buy_price, buy_day|

        ## For each |value| calculate the difference between the |value| and those at higher indexes
        
        (buy_day + 1...array.length).each do |sell_day|
            sell_price = array[sell_day]
            profit = sell_price - buy_price 

        ## return the indexes of the two values who have the greatest positive variance between them. 

            if profit > max_profit
                max_profit = profit
                buy_index = buy_day
                sell_index = sell_day
            end
        end

    end 

    ## Put the return

    results = [buy_index, sell_index]
    
    puts results.inspect

end 

stock_picker([17,3,6,9,15,8,6,1,10])