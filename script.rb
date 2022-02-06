def stock_picker(days)
	best_profit = 0
	min_day = 0
	max_day = 0
	days.each_with_index do |day, index|
		i = index + 1
		while i < days.length() do
			profit = (days[index] - days [i])
			if profit < best_profit
				best_profit = profit
				min_day = index
				max_day = i
			end
			i += 1
		end
	end
	puts [min_day, max_day]
end

days = [17,3,6,9,15,8,6,1,10]
stock_picker(days)