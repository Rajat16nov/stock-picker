def stock_picker(stock_prices)
    highest_profit = 0
    pair_of_days = []
    best_buy_day = 0
    best_sell_day = 0
    stock_prices.each_with_index do |day, index|
        max_profit = 0
        day_sold = 0
        day_bought = 0
        for i in index..stock_prices.length-1
            profit = stock_prices[i] - day
            if profit > max_profit
                max_profit = profit
                day_sold = i
                day_bought = day
            end
        end
        if max_profit > highest_profit
            highest_profit = max_profit
            best_buy_day = index
            best_sell_day = day_sold
        end
    end
    pair_of_days.push(best_buy_day)
    pair_of_days.push(best_sell_day)
    p pair_of_days
end

stock_picker([17,3,6,9,15,8,6,1,10])